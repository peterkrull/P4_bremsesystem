// Multiplication precision.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "stdio.h"
#include "stdint.h"
#include "inttypes.h"
#include "conio.h"

#include "math.h"

short Q1 = 8;
short Q2 = 12;
const float t_alarm = 0.2;
const short acceleration = 11;
const float bremseBuffer = 1.2;

uint32_t float2fix(float n, short Qa, short Qb)
{
   unsigned short int int_part = 0, frac_part = 0;
   int i;
   float t;

   int_part = (int)floor(n) << Qb;
   n -= (int)floor(n);

   t = 0.5;
   for (i = 0; i < Qb; i++) {
      if ((n - t) >= 0) {
         n -= t;
         frac_part += (1 << (Qb - 1 - i));
      }
      t = t / 2;
   }

   return int_part + frac_part;
}

double fix2float(uint32_t number, short Qa, short Qb) {
   double sum = 0;
   
   signed char power = Qb*(-1);

   for (int i = 0; i < (Qa+Qb); i++) {
      double buffer = (number & 1) * pow(2, power);
      sum += buffer;
      power++;
      number = number >> 1;
   }
   return sum;
   //printf("%f \n", sum);
}

uint32_t multiplyTwoFixedPointNumbers(uint32_t number1, uint32_t number2, short Qa, short Qb) {
   uint64_t buffer = number1 * number2;
   buffer = buffer << Qa;
   buffer = buffer >> Qa + Qb;
   return buffer;
}

uint32_t byteTilHastighed(uint32_t speed, short Qa, short Qb) {
   speed = speed << Qb;

   //Konverter fra byte til m/s
   uint32_t ligning1 = float2fix(32 / (255 * 3.6),Qa,Qb);
   speed = multiplyTwoFixedPointNumbers(speed, ligning1,Qa,Qb);
   return speed;
}

uint32_t bremselaengde(uint32_t speed, short Qa, short Qb) {
   speed = byteTilHastighed(speed,Qa,Qb);
   uint32_t speedBuffer = speed;

   uint32_t ligning2 = float2fix(bremseBuffer / (2 * acceleration),Qa,Qb);
   speed = multiplyTwoFixedPointNumbers(speed, ligning2,Qa,Qb);
   speed = multiplyTwoFixedPointNumbers(speed, speedBuffer,Qa,Qb);

   return speed;
}

uint32_t alarmlaengde(uint32_t speed, short Qa, short Qb) {
   uint32_t initialSpeed = speed;
   speed = byteTilHastighed(speed,Qa,Qb);

   uint32_t alarmLength = multiplyTwoFixedPointNumbers(speed, float2fix(t_alarm,Qa,Qb),Qa,Qb);   

   return alarmLength;
}

uint32_t LIDARcmTilm(uint32_t distance, short Qa,short Qb) {
   uint32_t initialDistance = distance;
   distance = distance << Qb;
   distance = multiplyTwoFixedPointNumbers(distance, float2fix(0.01,Qa,Qb),Qa,Qb);
   printf("Distance fra LIDAR i meter: %f\n", fix2float(distance,Qa,Qb));
   return distance;
}

double preciseBremseLaengdeNoBuffer(uint32_t speed) {
   double buffer = speed * 32 / (255 * 3.6);
   buffer = buffer * buffer / (2 * acceleration);

   return buffer;
}

double preciseBremseLaengde(uint32_t speed) {
   

   double buffer = preciseBremseLaengdeNoBuffer(speed);

   buffer = buffer * bremseBuffer;

   return buffer;
}

double preciseAlarmLaengde(uint32_t speed) {
   double buffer = speed * 32 / (255 * 3.6);
   buffer = buffer* t_alarm;
   return(buffer);
}


void printCalculationsOneFormat(uint32_t speed) {
   printf("\t Speed = %d\n ", speed);
   double bremseLaengdeFixPoint = fix2float(bremselaengde(speed,Q1,Q2),Q1,Q2);
   printf("\t\tBremselaengde m. buffer (fixedpoint) = %f m\n", bremseLaengdeFixPoint);

   double bremseLaengdeFloatingPoint = preciseBremseLaengde(speed);
   printf("\t\tBremselaengde m. buffer (floatingpoint) = %f m\n", bremseLaengdeFloatingPoint);

   double bremseLaengdeNoBuffer = preciseBremseLaengdeNoBuffer(speed);
   printf("\t\tBremselaengde uden buffer = %f m\n", bremseLaengdeNoBuffer);

   double afstandVedBremsningFixedPoint = bremseLaengdeFixPoint - bremseLaengdeNoBuffer;
   double afstandVedBremsningFloatingPoint = bremseLaengdeFloatingPoint - bremseLaengdeNoBuffer;

   printf("\n\t\tAfstand fra bil til vaeg ved stop (fixedpoint) = %f m\n", afstandVedBremsningFixedPoint);
   printf("\t\tProcent af bremselaengden = %f %%\n", 100*afstandVedBremsningFixedPoint / bremseLaengdeNoBuffer);
   printf("\n\t\tAfstand fra bil til vaeg ved stop (floatingpoint) = %f m\n",  afstandVedBremsningFloatingPoint);
   printf("\t\tProcent af bremselaengden = %f %%\n", 100*afstandVedBremsningFloatingPoint / bremseLaengdeNoBuffer);

   double alarmLaengdeFixedPoint = fix2float(alarmlaengde(speed,Q1,Q2),Q1,Q2);
   printf("\n\t\talarmlaengde (fixedpoint) = %f m\n", alarmLaengdeFixedPoint);

   double alarmLaengdeFloatingPoint = preciseAlarmLaengde(speed);
   printf("\t\talarmlaengde (floatingpoint) = %f m\n", alarmLaengdeFloatingPoint);
   

   double totalBremselaengdeFixedPoint = bremseLaengdeFixPoint + alarmLaengdeFixedPoint;
   double totalBremselaengdeFloatingPoint = bremseLaengdeFloatingPoint + alarmLaengdeFloatingPoint;

   printf("\n\t\tSamlet afstand (fixedpoint) = %f m\n", totalBremselaengdeFixedPoint);
   printf("\t\tSamlet afstand (floatingpoint) = %f m\n", totalBremselaengdeFloatingPoint);

   


   printf("\n");
}















uint32_t multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(uint32_t number1, short Qa1, short Qb1, uint32_t number2,  short Qa2, short Qb2, short Qaout, short Qbout ) {
   //multiplies the two numbers
   uint64_t buffer = number1 * number2;
   //buffer = buffer << Qain;
   //creates format Q2
   buffer = buffer >> Qb1+Qb2-Qbout;
   return buffer;
}

uint32_t byteTilHastighedTwoFormats(uint32_t speed, short Qa1, short Qb1, short Qa2, short Qb2, short Qaout, short Qbout) {
   speed = speed << Qb1;

   //Konverter fra byte til m/s
   uint32_t ligning1 = float2fix(32 / (255 * 3.6), Qa2, Qb2);
   speed = multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(speed, Qa1, Qb1, ligning1, Qa2, Qb2, Qaout,Qbout);
   return speed;
}


void printCalculationsTwoFormat(uint32_t speed) {
for(int i = )

   printf("\t Speed = %d\n ", speed);

   double bremseLaengdeFixPoint = fix2float(bremselaengde(speed, Q1, Q2), Q1, Q2);
   printf("\t\tBremselaengde m. buffer (fixedpoint) = %f m\n", bremseLaengdeFixPoint);

   double bremseLaengdeFloatingPoint = preciseBremseLaengde(speed);
   printf("\t\tBremselaengde m. buffer (floatingpoint) = %f m\n", bremseLaengdeFloatingPoint);

   double bremseLaengdeNoBuffer = preciseBremseLaengdeNoBuffer(speed);
   printf("\t\tBremselaengde uden buffer = %f m\n", bremseLaengdeNoBuffer);

   double afstandVedBremsningFixedPoint = bremseLaengdeFixPoint - bremseLaengdeNoBuffer;
   double afstandVedBremsningFloatingPoint = bremseLaengdeFloatingPoint - bremseLaengdeNoBuffer;

   printf("\n\t\tAfstand fra bil til vaeg ved stop (fixedpoint) = %f m\n", afstandVedBremsningFixedPoint);
   printf("\t\tProcent af bremselaengden = %f %%\n", 100 * afstandVedBremsningFixedPoint / bremseLaengdeNoBuffer);
   printf("\n\t\tAfstand fra bil til vaeg ved stop (floatingpoint) = %f m\n", afstandVedBremsningFloatingPoint);
   printf("\t\tProcent af bremselaengden = %f %%\n", 100 * afstandVedBremsningFloatingPoint / bremseLaengdeNoBuffer);

   double alarmLaengdeFixedPoint = fix2float(alarmlaengde(speed, Q1, Q2), Q1, Q2);
   printf("\n\t\talarmlaengde (fixedpoint) = %f m\n", alarmLaengdeFixedPoint);

   double alarmLaengdeFloatingPoint = preciseAlarmLaengde(speed);
   printf("\t\talarmlaengde (floatingpoint) = %f m\n", alarmLaengdeFloatingPoint);


   double totalBremselaengdeFixedPoint = bremseLaengdeFixPoint + alarmLaengdeFixedPoint;
   double totalBremselaengdeFloatingPoint = bremseLaengdeFloatingPoint + alarmLaengdeFloatingPoint;

   printf("\n\t\tSamlet afstand (fixedpoint) = %f m\n", totalBremselaengdeFixedPoint);
   printf("\t\tSamlet afstand (floatingpoint) = %f m\n", totalBremselaengdeFloatingPoint);




   printf("\n");
}




void main(void)
{
   uint32_t minSpeed = 39;//5 km/h
   uint32_t maxSpeed = 255;//32 km/h

   for (int i = 7; i < 17; i++) {
      Q2 = i;
      printf("Q2 = %d\n", Q2);

      printCalculationsOneFormat(minSpeed);
      printCalculationsOneFormat(maxSpeed);
   }
   _getch();
}

