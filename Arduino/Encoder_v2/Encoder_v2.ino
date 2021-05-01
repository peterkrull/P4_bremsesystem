#include <SPI.h>
#include <SD.h>
File myFile;  

const int slow_time = 30000;

const int sens_driv_pin = 5;
const int sens_roll_pin = 6;
const int braking_pin = 12;
const int led_int_pin = 13;

boolean curr_sens_driv;
boolean curr_sens_roll;

boolean prev_sens_driv;
boolean prev_sens_roll;

unsigned long prev_time_driv, curr_time_driv, delta_time_driv;
unsigned long prev_time_roll, curr_time_roll, delta_time_roll;
const float tirefactor = 1;

float driv_speed, roll_speed;

int print_cntr = 0;
boolean driving;
boolean first_print = false;
boolean sd_closed = true;
unsigned long stopTime;

// Timer (micros) counters
unsigned long delta_time;
unsigned long prev_time;

void setup() {

  Serial.begin(115200);
  
  // encoder pins
  pinMode(sens_driv_pin , INPUT);
  pinMode(sens_roll_pin , INPUT);

  // pin that signals started brake
  pinMode(braking_pin , INPUT);

  // status LED
  pinMode(led_int_pin, OUTPUT);
   Serial.print("Initializing SD card...");

  Serial.print("Initializing SD card...");
  if (!SD.begin(10)) {
    Serial.println("initialization failed!");
    while (1);
  } Serial.println("initialization done.");

  myFile = SD.open("test_100.txt", FILE_WRITE);
  myFile.println("\n# first line of test");
  Serial.println("\n# first line of test");
}

// HIGH when stopped

void loop(){
  curr_sens_driv = digitalRead(sens_driv_pin);
  curr_sens_roll = digitalRead(sens_roll_pin);

  char str_buf[16];

  // calc delta time for ROLLING wheel
  if (curr_sens_roll != prev_sens_roll){
    prev_sens_roll = curr_sens_roll;
    curr_time_roll = micros();
    delta_time_roll = curr_time_roll - prev_time_roll;
    prev_time_roll = curr_time_roll;
    //Serial.println(delta_time_roll);

    // Identify long delta times;
    if (delta_time_roll > slow_time * 1.2){
      driving = false;
      sd_close();
    } else if (delta_time_roll < slow_time * 0.8) { 
      driving = true; 
      sd_init();
    }

    if (driving){    
      sprintf(str_buf, "R %I", delta_time_roll);
      myFile.println(str_buf);
      Serial.println(str_buf);
    }
  } else if (micros()-prev_time_roll > slow_time*0.75){
    prev_time_roll = micros() - slow_time;
  }

  // calc delta time for DRIVING wheel
  if (curr_sens_driv != prev_sens_driv){
    prev_sens_driv = curr_sens_driv;
    curr_time_driv = micros();
    delta_time_driv = curr_time_driv - prev_time_driv;
    prev_time_driv = curr_time_driv;
    //Serial.println(delta_time_driv);

    if (driving){
      sprintf(str_buf, "F %I", delta_time_driv);
      myFile.println(str_buf);
      Serial.println(str_buf);
    }
  }
}

void sd_init(){
  if (first_print == false){
    Serial.println("Opening SD card");
    myFile = SD.open("test_100.txt", FILE_WRITE);
    myFile.println("\n# first line of test");
    sd_closed = false;
    first_print = true;
  }
}

void sd_close(){
  if (sd_closed == false){
    Serial.println("Closing SD card");
    myFile.close();
    sd_closed = true;
    first_print = false;
  }
}
