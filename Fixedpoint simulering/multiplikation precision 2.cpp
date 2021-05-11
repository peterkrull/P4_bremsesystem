#include "stdio.h"
#include "stdint.h"
#include "inttypes.h"
#include "conio.h"
#include "locale.h"
#include "math.h"


struct fixedPointNumbers {
   uint32_t number;
   short Q1;
   short Q2;
}fixedPointNumber;

uint32_t float2fix(float n, struct fixedPointNumbers number)
{
   uint32_t int_part = 0, frac_part = 0;
   int i;
   float t;

   int_part = (int)floor(n) << number.Q2;
   n -= (int)floor(n);

   t = 0.5;
   for (i = 0; i < number.Q2; i++) {
      if ((n - t) >= 0) {
         n -= t;
         frac_part += (1 << (number.Q2 - 1 - i));
      }
      t = t / 2;
   }

   return int_part + frac_part;
}

double fix2float(struct fixedPointNumbers number) {
   double sum = 0;

   signed short power = number.Q2 * (-1);

   for (int i = 0; i < (number.Q1 + number.Q2); i++) {
      double buffer = (number.number & 1) * pow(2, power);
      sum += buffer;
      power++;
      number.number = number.number >> 1;
   }
   return sum;
}

uint32_t multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(struct fixedPointNumbers number1, struct fixedPointNumbers number2, struct fixedPointNumbers product) {
   //multiplies the two numbers
   uint64_t buffer = (uint64_t)number1.number * (uint64_t)number2.number;
   
   buffer = buffer >> number1.Q2 + number2.Q2 - product.Q2;

   uint64_t toAnd = (1 << (product.Q1 + product.Q2)) - 1;

   buffer = buffer & toAnd;

   return buffer;
}

uint32_t add2FixedPointNumbers(struct fixedPointNumbers number1, struct fixedPointNumbers number2, struct fixedPointNumbers sumFixed) {
   uint64_t bitshiftedNumber1 = 0;
   uint64_t bitshiftedNumber2 = 0;
   uint64_t sum = 0;
   short Q2;
   if (number1.Q2 < number2.Q2) {
      bitshiftedNumber1 = (uint64_t)number1.number << (number2.Q2 - number1.Q2);
      bitshiftedNumber2 = number2.number;
      Q2 = number2.Q2;
   }
   else if(number2.Q2 < number1.Q2)
   {
      bitshiftedNumber1 = number1.number;
      bitshiftedNumber2 = (uint64_t)number2.number << (number1.Q2 - number2.Q2);
      Q2 = number1.Q2;
   }
   else
   {
      bitshiftedNumber1 = number1.number;
      bitshiftedNumber2 = number2.number;
      Q2 = number1.Q2;
   }

   sum = bitshiftedNumber1 + bitshiftedNumber2;

   if (Q2 < sumFixed.Q2) {
      sum = sum << sumFixed.Q2 - Q2;
   }
   else if (sumFixed.Q2 < Q2) {
      sum = sum >> Q2 - sumFixed.Q2;
   }

   return sum;
};


void multiplicationProcess(uint8_t speedByte) {
   //Konstanter
   double alarmTidFloatingPoint = 0.3;
   short acceleration = 939;

   struct fixedPointNumbers alarmTidFixedPoint;
   alarmTidFixedPoint.Q1 = 0;
   alarmTidFixedPoint.Q2 = 18 - alarmTidFixedPoint.Q1;
   alarmTidFixedPoint.number = float2fix(alarmTidFloatingPoint, alarmTidFixedPoint);

   struct fixedPointNumbers byteFromSystem;
   byteFromSystem.number = speedByte;
   byteFromSystem.Q1 = 8;
   byteFromSystem.Q2 = 0;


   // floating point reference
   double k1FloatingPoint = 3200 / (255 * 3.6);
   double trin3FloatingPoint = byteFromSystem.number * k1FloatingPoint;
   double k2FloatingPoint = 1.2 / (2 * acceleration);
   double trin5FloatingPoint = trin3FloatingPoint * k2FloatingPoint;
   double trin6FloatingPoint = trin5FloatingPoint * trin3FloatingPoint;

   double k3FloatingPoint = 0.025;
   double bremselaengdeUdenBuffer = trin3FloatingPoint * trin3FloatingPoint / (2 * acceleration)+trin3FloatingPoint*k3FloatingPoint;



   // printf("Floating point result: %f", floatingPointResult);

   struct fixedPointNumbers k1;
   k1.Q1 = 2;
   k1.Q2 = 16;
   k1.number = float2fix(3200 / (255 * 3.6), k1);

   printf("\tk1 (fixed point)    = %f\n", fix2float(k1));
   printf("\tk1 (floating point) = %f\n", k1FloatingPoint);

   printf("\tk1 = Q%d,%d\n", k1.Q1,k1.Q2);

   //hastighed cm/s
   struct fixedPointNumbers trin3FixedPoint;
   trin3FixedPoint.Q1 = 10;
   trin3FixedPoint.Q2 = 8;
   trin3FixedPoint.number = multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(k1, byteFromSystem, trin3FixedPoint);


   printf("\n\ttrin 3 (fixedPoint)    = %f cm/s\n", fix2float(trin3FixedPoint));
   printf("\ttrin 3 (floatingPoint) = %f cm/s\n", trin3FloatingPoint);

   printf("\ttrin 3 = Q%d,%d\n", trin3FixedPoint.Q1, trin3FixedPoint.Q2);

   struct fixedPointNumbers k2FixedPoint;
   k2FixedPoint.Q1 = 0;
   k2FixedPoint.Q2 = 18;
   k2FixedPoint.number = float2fix((1.2 / (2 * acceleration)), k2FixedPoint);


   printf("\n\tk2 (fixed point)    = %f\n", fix2float(k2FixedPoint));
   printf("\tk2 (floating point) = %f\n", k2FloatingPoint);

   printf("\tk2 = Q%d,%d\n", k2FixedPoint.Q1, k2FixedPoint.Q2);

   struct fixedPointNumbers trin5FixedPoint;
   trin5FixedPoint.Q1 = 0;
   trin5FixedPoint.Q2 = 18;
   trin5FixedPoint.number = multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(k2FixedPoint, trin3FixedPoint, trin5FixedPoint);


   printf("\n\ttrin 5 (fixed point)    = %f\n", fix2float(trin5FixedPoint));
   printf("\ttrin 5 (floating point) = %f\n", trin5FloatingPoint);

   printf("\ttrin 5 = Q%d,%d\n", trin5FixedPoint.Q1, trin5FixedPoint.Q2);

   struct fixedPointNumbers trin6FixedPoint;
   trin6FixedPoint.Q1 = 9;
   trin6FixedPoint.Q2 = 9;
   trin6FixedPoint.number = multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(trin5FixedPoint, trin3FixedPoint, trin6FixedPoint);

   printf("\n\ttrin 6 (fixed point)    = %f cm\n", fix2float(trin6FixedPoint));
   printf("\ttrin 6 (floating point) = %f cm\n", trin6FloatingPoint);

   printf("\ttrin 6 = Q%d,%d\n", trin6FixedPoint.Q1, trin6FixedPoint.Q2);


   //motornedkølingskonstant
   

   struct fixedPointNumbers k3FixedPoint;
   k3FixedPoint.Q1 = 0;
   k3FixedPoint.Q2 = 18;
   k3FixedPoint.number = float2fix(k3FloatingPoint, k3FixedPoint);

   printf("\n\tk3 (fixed point)    = %f\n", fix2float(k3FixedPoint));
   printf("\tk3 (floating point) = %f\n", k3FloatingPoint);


   //længde bilen har kørt før motoren begynder en hård opbremsning
   double trin7FloatingPoint = trin3FloatingPoint * k3FloatingPoint;

   struct fixedPointNumbers trin7FixedPoint;
   trin7FixedPoint.Q1 = 5;
   trin7FixedPoint.Q2 = 18 - trin7FixedPoint.Q1;
   trin7FixedPoint.number = multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(trin3FixedPoint, k3FixedPoint, trin7FixedPoint);

   printf("\n\ttrin 7 (fixed point)    = %f cm\n", fix2float(trin7FixedPoint));
   printf("\ttrin 7 (floating point) = %f cm\n", trin7FloatingPoint);

   printf("\ttrin 7 = Q%d,%d\n", trin7FixedPoint.Q1, trin7FixedPoint.Q2);

   //summere bremselængde (trin6) og motornedkølingslængden (trin7)
   double trin8FloatingPoint = trin7FloatingPoint + trin6FloatingPoint;
   struct fixedPointNumbers trin8FixedPoint;
   trin8FixedPoint.Q1 = 10;
   trin8FixedPoint.Q2 = 18 - trin8FixedPoint.Q1;
   trin8FixedPoint.number = add2FixedPointNumbers(trin7FixedPoint, trin6FixedPoint, trin8FixedPoint);

   struct fixedPointNumbers rundTrin8op;
   rundTrin8op.Q1 = 18;
   rundTrin8op.Q2 = 0;
   rundTrin8op.number = 1;

   trin8FixedPoint.number = add2FixedPointNumbers(trin8FixedPoint, rundTrin8op, trin8FixedPoint);

   printf("\n\ttrin 8 (fixed point)    = %f cm\n", fix2float(trin8FixedPoint));
   printf("\ttrin 8 (floating point) = %f cm\n", trin8FloatingPoint);

   printf("\ttrin 8 = Q%d,%d\n", trin8FixedPoint.Q1, trin8FixedPoint.Q2);


   printf("\n\tBremselængde uden buffer = %f cm\n", bremselaengdeUdenBuffer);

   double distanceFrabilTilvaegFixedPoint = fix2float(trin8FixedPoint) - bremselaengdeUdenBuffer;
   printf("\tAfstand til væg ved stop = %f cm\n", distanceFrabilTilvaegFixedPoint);

   double afstandProcentAfBremselaengde = 100 * distanceFrabilTilvaegFixedPoint / bremselaengdeUdenBuffer;
   printf("\tAfstand fra væg som procent af bremselængde = %f %%\n\n", afstandProcentAfBremselaengde);

   struct fixedPointNumbers alarmLaengdeFixedPoint;
   alarmLaengdeFixedPoint.Q1 = 9;
   alarmLaengdeFixedPoint.Q2 = 18 - alarmLaengdeFixedPoint.Q1;
   alarmLaengdeFixedPoint.number = multiplyTwoFixedPointNumbersInputQNotEqualOutputQ(trin3FixedPoint, alarmTidFixedPoint, alarmLaengdeFixedPoint);

   double alarmLaengdeFloatingPoint = trin3FloatingPoint * alarmTidFloatingPoint;

   printf("\n\tAlarmLængde (fixed point)    = %f cm\n", fix2float(alarmLaengdeFixedPoint));
   printf("\talarmLængde (floating point) = %f cm\n", alarmLaengdeFloatingPoint);

   printf("\tAlarm længde = Q%d,%d\n", alarmLaengdeFixedPoint.Q1, alarmLaengdeFixedPoint.Q2);

   struct fixedPointNumbers totalLengthFixedPoint;
   totalLengthFixedPoint.Q1 = 18;
   totalLengthFixedPoint.Q2 = 0;
   totalLengthFixedPoint.number = add2FixedPointNumbers(alarmLaengdeFixedPoint, trin8FixedPoint, totalLengthFixedPoint);

   double totalLengthFloatingPoint = alarmLaengdeFloatingPoint + trin8FloatingPoint;

   printf("\n\tLængde når alarmen går igang (fixed point)    = %f cm\n", fix2float(totalLengthFixedPoint));
   printf("\tLængde når alarmen går igang (floating point) = %f cm\n", totalLengthFloatingPoint);
   printf("\tDifference  = %f cm\n", fix2float(totalLengthFixedPoint) - totalLengthFloatingPoint);
   printf("\ttotalLængde = Q%d,%d\n", totalLengthFixedPoint.Q1, totalLengthFixedPoint.Q2);


}


void main(void)
{
   //gør at man kan skrive æøå
   setlocale(LC_ALL, "");
 /*
   printf("Byte = 39\n");
   multiplicationProcess(39);

   

   printf("\nByte = 255\n");
   multiplicationProcess(255);
   */
   printf("byte = 39\n");
   multiplicationProcess(39);


   printf("byte = 79\n");
   multiplicationProcess(79);

   printf("byte = 120\n");
   multiplicationProcess(120);


   printf("byte = 159\n");
   multiplicationProcess(159);


   printf("byte = 199\n");
   multiplicationProcess(199);


   printf("byte = 239\n");
   multiplicationProcess(239);

   printf("byte = 240\n");
   multiplicationProcess(240);

   _getch();
}
