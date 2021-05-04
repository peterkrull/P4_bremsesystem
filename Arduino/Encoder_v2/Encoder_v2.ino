#include <SPI.h>
#include <SD.h>
File myFile;  

#define printing

// Invert behaviour of braking input
boolean invert_braking_in = false;

// Timing constants
const unsigned long slow_time = 30000;          // Lower bound for time between edges
const unsigned long stop_time_delay = 500000;   // half second

// Pin assignments
const int sens_driv_pin = 4;
const int sens_roll_pin = 5;
const int braking_pin_in = 3;
const int braking_pin_out = 9;
const int led_int_pin = 13;

// previous and current states for delta calc
boolean curr_sens_driv;
boolean curr_sens_roll;
boolean prev_sens_driv;
boolean prev_sens_roll;

boolean driv_diff_found = false;
boolean roll_diff_found = false;

// previous, current and delta times
unsigned long prev_time_driv, curr_time_driv, delta_time_driv;
unsigned long prev_time_roll, curr_time_roll, delta_time_roll;
unsigned long stop_timer, curr_time; 

// state booleans
boolean driving = false;
boolean first_print = false;
boolean sd_closed = true;
boolean stop_time_noted = false;

int test_counter = 0;
char file_str_buf[16];
String cache = "cache.txt";


void setup() {

  #ifdef printing
  Serial.begin(115200);
  #endif
  
  // encoder pins
  pinMode(sens_driv_pin , INPUT);
  pinMode(sens_roll_pin , INPUT);

  // pin that signals started brake
  pinMode(braking_pin_in , INPUT);
  pinMode(braking_pin_out , OUTPUT);

  // status LED
  pinMode(led_int_pin, OUTPUT);

  // SD init
  #ifdef printing
  Serial.print("Initializing SD card...");
  #endif
  if (!SD.begin(10)) {
    #ifdef printing
    Serial.println("initialization failed!");
    #endif
    while (1);
  } 
  #ifdef printing
  Serial.println("initialization done.");
  #endif
  
  /*
  myFile = SD.open("test.txt", FILE_WRITE);
  myFile.println("\n# first line of test");
  #ifdef printing
  Serial.println("\n# first line of test");
  #endif
  */

  sd_get_counter();
  Serial.print("CNTR0 ");Serial.println(test_counter);
}

void loop(){
  curr_sens_driv = digitalRead(sens_driv_pin);
  curr_sens_roll = digitalRead(sens_roll_pin);
  curr_time = micros();
   
  // calc delta time for ROLLING wheel
  if (curr_sens_roll != prev_sens_roll){
    curr_time_roll = curr_time;
    prev_sens_roll = curr_sens_roll;
    delta_time_roll = curr_time_roll - prev_time_roll;
    prev_time_roll = curr_time_roll;
    //Serial.print("ROLL ");Serial.println(delta_time_roll);
    roll_diff_found = true;
  }

  // calc delta time for DRIVING wheel
  if (curr_sens_driv != prev_sens_driv){
    prev_sens_driv = curr_sens_driv;
    curr_time_driv = curr_time;
    delta_time_driv = curr_time_driv - prev_time_driv;
    prev_time_driv = curr_time_driv;
    //Serial.print("DRIV ");Serial.println(delta_time_driv);
    driv_diff_found = true;
  }

  // char buffer for SD printing
  char str_buf[16];

  // if there is a delta for rolling wheel
  if (roll_diff_found){
    //if (false){  

    // Identify long delta times;
    if (delta_time_roll > slow_time * 1.2 && stop_time_noted == false && driving){ // time higher, drives slower 1.2
      // define time to stop logging data.
      stop_timer = micros() + stop_time_delay;
      stop_time_noted = true;
      
    } else if (delta_time_roll < slow_time * 0.8) { // time lower, drives faster 0.8
      driving = true; 
      sd_init();
    }

    // if driving, print rear data to SD
    if (driving){
      if (digitalRead(braking_pin_in) == invert_braking_in){
        sprintf(str_buf, "R\t%u\tD", delta_time_roll);
      } else {
        sprintf(str_buf, "R\t%u\tB", delta_time_roll);
      }
      
      myFile.println(str_buf);
      #ifdef printing
      Serial.println(str_buf);
      #endif

      roll_diff_found = false;
    }
  }

  // if time since slow threshhold has passed, close SD card
  if (micros() > stop_timer && stop_time_noted && driving){
    stop_time_noted = false;
    driving = false;
    sd_close();
  }

  // if there is a delta for driving wheel
  if (driv_diff_found){
    //if (false){

    // if driving print front data to SD
    if (driving){
      if (digitalRead(braking_pin_in) == invert_braking_in){
        sprintf(str_buf, "F\t%u\tD", delta_time_driv); 
      } else {
        sprintf(str_buf, "F\t%u\tB", delta_time_driv);
      }
      myFile.println(str_buf);
      #ifdef printing
      Serial.println(str_buf);
      #endif

      driv_diff_found = false;
    }
  }

  // print wether stop_State has been noted
  digitalWrite(braking_pin_out,stop_time_noted);
  digitalWrite(led_int_pin,stop_time_noted);
  
}

// Restarts connection with SD card
void sd_init(){
  if (first_print == false){
    #ifdef printing
    Serial.println("Opening SD card");
    #endif

    sprintf(file_str_buf, "file_%i.txt", test_counter);

    myFile = SD.open(file_str_buf, FILE_WRITE);
    myFile.println("#\t0\t#");
    sd_closed = false;
    first_print = true;
  }
}

// Closes SD card connection
void sd_close(){
  if (sd_closed == false){
    #ifdef printing
    Serial.println("Closing SD card");
    #endif
    //myFile.println("X last line of test");
    myFile.close();
    test_counter++;
    Serial.print("CNTR1 ");Serial.println(test_counter);
    sd_set_counter();
    Serial.print("CNTR2 ");Serial.println(test_counter);
    sd_closed = true;
    first_print = false;
  }
}

// Get test counter from SD card
void sd_get_counter(){
  myFile = SD.open(cache);
  String temp_num = "";
  while (myFile.available()) {
    temp_num += (char)myFile.read();
  }
  test_counter = temp_num.toInt();
  Serial.print("CNTR3 ");Serial.println(temp_num);
  Serial.print("CNTR4 ");Serial.println(test_counter);
  myFile.close();
}

// Write test counter to SD card
void sd_set_counter(){
  SD.remove(cache);
  myFile = SD.open(cache, FILE_WRITE);
  myFile.println(test_counter);
  myFile.close();
}