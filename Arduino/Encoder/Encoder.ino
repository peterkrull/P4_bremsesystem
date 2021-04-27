
const int sens_driv_pin = 5;
const int sens_roll_pin = 6;

boolean prev_sens;
unsigned long prev_time, delta_time;
const float tirefactor = 1;
const int avg_size = 1;

float driv_speed, roll_speed;

float speedavg[avg_size];

int print_cntr = 0;
boolean stopState;
unsigned long stopTime;

void setup() {
  // put your setup code here, to run once:
  pinMode(5 , INPUT);
  pinMode(13,OUTPUT);
  pinMode(12,OUTPUT);
  Serial.begin(115200);
}

// HIGH when stopped

void loop(){
  float average = 0;

  for (int i = 0 ; i < avg_size ; i++){
    average = average + current_speed(); // Sum of speeds
  }

  //driv_speed = float_average(current_speed);
  //roll_speed = float_average(current_speed);
  
  average = average / avg_size; // Takes average

  if (print_cntr > 100){
    Serial.println(average,2);
    print_cntr = 0;
  }

  print_cntr ++;

  // Reports stopped/running status
  if (average < 0.1) {
    if (stopState == 0){
      stopTime = millis();
    }
    stopState = 1;
    //delay(500);
  } else if (stopTime + 500 < millis()){
    stopState = 0;
    //Serial.println("0");
  }

  digitalWrite(12, stopState);
  digitalWrite(13, stopState);
}


float current_speed(){
  boolean curr_sens = digitalRead(sens_driv_pin); // Fix with pointer
  unsigned long curr_time = micros();

  if (curr_sens != prev_sens){
    delta_time = curr_time - prev_time;
    prev_sens = curr_sens;
    prev_time = curr_time;
  } else if (curr_time - prev_time > 50000) { // 0.005 sekunder (10e3 mikro) 
    return 0;
  }

  // 1e6 / 32 = 31250

  return 31250/(float)delta_time; // RPS, Revs per second
}

float float_average(float (*input_continuous)(), int average_over){
  float average = 0;
  for (int i = 0 ; i < average_over ; i ++){
    average = average + input_continuous();
  }

  average = average/average_over;

  return average;
}
