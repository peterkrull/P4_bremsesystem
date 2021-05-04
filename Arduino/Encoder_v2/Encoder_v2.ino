#include <SPI.h>
#include <SD.h>
File myFile;  

//#define printing

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
const int led_int_pin = A5;

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
unsigned long stop_timer, curr_time, prev_time; 

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
  Serial.begin(1000000);
  #endif
  Serial.begin(500000);
  
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

  sd_get_counter();
}

boolean loop_bool = true;
unsigned long loop_timer = 0;
int counter_flush = 0;

void loop(){
  curr_sens_driv = digitalRead(sens_driv_pin);
  curr_sens_roll = digitalRead(sens_roll_pin);

  prev_time = curr_time;
  curr_time = micros();

  // Detect long loop times by lighting up LED
  if ( curr_time - prev_time > 1000 && loop_bool) {
    digitalWrite(led_int_pin,HIGH);
    loop_timer = curr_time;
    loop_bool = false;
  } else if (curr_time > loop_timer + 100e3) { 
    digitalWrite(led_int_pin,LOW);
    loop_bool = true;
  }
   
  // calc delta time for ROLLING wheel
  if (curr_sens_roll != prev_sens_roll){
    curr_time_roll = curr_time;
    prev_sens_roll = curr_sens_roll;
    delta_time_roll = curr_time_roll - prev_time_roll;
    prev_time_roll = curr_time_roll;
    roll_diff_found = true;
  }

  // calc delta time for DRIVING wheel
  if (curr_sens_driv != prev_sens_driv){
    prev_sens_driv = curr_sens_driv;
    curr_time_driv = curr_time;
    delta_time_driv = curr_time_driv - prev_time_driv;
    prev_time_driv = curr_time_driv;
    driv_diff_found = true;
  }

  // char buffer for SD printing
  char str_buf[16];

  // if there is a delta for rolling wheel
  if (roll_diff_found){


    // Identify long delta times;
    if (delta_time_roll > slow_time * 1.2 && stop_time_noted == false && driving){
      stop_timer = micros() + stop_time_delay;
      stop_time_noted = true;
      
    } else if (delta_time_roll < slow_time * 0.8 && driving == false) { // time lower, drives faster 0.8
      driving = true; 
      sd_init();
    } else {
      stop_timer = micros() + 1e6; 
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

  // print wether car has stopped has been noted
  if ( delta_time_roll > slow_time * 0.7 ) {
    digitalWrite(braking_pin_out,true);
  } else if ( delta_time_roll < slow_time * 0.5 ) {
    digitalWrite(braking_pin_out,false);
  }  
}

// Restarts connection with SD card
void sd_init(){
  if (first_print == false){
    #ifdef printing
    Serial.println("Opening SD card");
    #endif

    sprintf(file_str_buf, "file_%i.txt", test_counter);

    myFile = SD.open(file_str_buf, O_CREAT | O_WRITE);
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
    myFile.close();
    test_counter++;
    sd_set_counter();;
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
  myFile.close();
}

// Write test counter to SD card
void sd_set_counter(){
  SD.remove(cache);
  myFile = SD.open(cache, O_CREAT | O_WRITE);
  myFile.println(test_counter);
  myFile.close();
}

const byte buff_size = 50;
unsigned long time_ready = 0;
byte temp_count = 0;
byte buff_count = 0;
String str_buffer = "";

void sd_smart_buffer(String input_str){

  input_str += "\n";

  // If buffer is not full and time is past ready_time, print normally.
  if (millis() > time_ready && buff_count < buff_size){
    // If buffer was just emptied, print local buffer
    if (temp_count > 0){
      myFile.print(str_buffer);
      buff_count += temp_count;
      temp_count = 0; 
    }
    myFile.print(input_str);
    buff_count++;

  // If buffer is full, initiate local buffer
  } else if (buff_count == buff_size){
    SD.flush();
    buff_count = 0;
    str_buffer = "";
    time_ready = millis() + 500;
  } 
  
  // If buffer is still flushing, add to local buffer
  if (millis() <= time_ready){
    str_buffer += input_str;
    temp_count++;
  }
}