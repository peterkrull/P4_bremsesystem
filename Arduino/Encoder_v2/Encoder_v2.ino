#include <SPI.h>
#include <SD.h>
File myFile;  

//#define printing

// Only define one of these
//#define led_loop_time
//#define led_car_stop
#define led_buffer_full

// Invert behaviour of braking input
boolean invert_braking_in = false;

// Timing constants
const unsigned long slow_time = 30000;          // Lower bound for time between edges
const unsigned long stop_time_delay = 500000;   // half second

// Pin assignments
const int sens_driv_pin = 2;
const int sens_roll_pin = 3;
const int braking_pin_in = 4;
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

int test_counter = 0;               // File number
char file_str_buf[12];              // Length of string buffer
String cache = "cache.txt";         // Cache file name

// interrupt buffer vars
const int SW_debounce_time = 100;   // Time in us before new change
const int buffersize = 10;          // Buffer size pr sensor

unsigned long last_ISR_drive, last_ISR_roll;
unsigned long buffer_drive[buffersize];
unsigned long buffer_roll[buffersize];

unsigned int buffer_pointer_drive_ISR = 0;
unsigned int buffer_pointer_roll_ISR = 0;
unsigned int buffer_pointer_drive_get = 0;
unsigned int buffer_pointer_roll_get = 0;

void setup() {

  #ifdef printing
  Serial.begin(500000);
  #endif
  Serial.begin(500000);

  // empties the interrupt buffer
  init_buffer();

  // interrupt pin init
  attachInterrupt(digitalPinToInterrupt(sens_driv_pin), ISR_drive, CHANGE);
  attachInterrupt(digitalPinToInterrupt(sens_roll_pin), ISR_roll, CHANGE);

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

  // Loop begin time
  prev_time = curr_time;
  curr_time = micros();

  // pull oldest data from buffer
  delta_time_driv = get_buffer_drive();
  delta_time_roll = get_buffer_roll();

  // Identify change in delta time
  if (delta_time_driv > 0){
    #ifdef printing
    Serial.print("\ndriv: ");Serial.println(delta_time_driv);
    #endif
    driv_diff_found = true;
  } else { driv_diff_found = false; }

  if (delta_time_roll > 0){
    #ifdef printing
    Serial.print("roll: ");Serial.println(delta_time_roll);
    #endif
    roll_diff_found = true; 
  } else { roll_diff_found = false; }

  // Detect long loop times by lighting up LED
  if ( curr_time - prev_time > 600 && loop_bool) { // 0.6 milli
    #ifdef led_loop_time
    digitalWrite(led_int_pin,HIGH);
    #endif
    loop_timer = curr_time;
    loop_bool = false;
  } else if (curr_time > loop_timer + 100e3) { // 100 milli
    #ifdef led_loop_time
    digitalWrite(led_int_pin,LOW);
    #endif
    loop_bool = true;
  }

  // char buffer for SD printing
  char str_buf[16];

  // if there is a delta for rolling wheel
  if (roll_diff_found){


    // Identify long delta times;
    if (delta_time_roll > slow_time * 1.2 && stop_time_noted == false && driving){
      stop_timer = micros() + stop_time_delay;
      stop_time_noted = true;
      
    // time lower, drives faster 0.8
    } else if (delta_time_roll < slow_time * 0.8 && driving == false) { 
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

  // print/LED wether car is stopped
  if ( delta_time_roll > slow_time * 0.7 ) {
    digitalWrite(braking_pin_out,true);
    #ifdef led_car_stop
    digitalWrite(led_int_pin,HIGH);
    #endif
  } else if ( delta_time_roll < slow_time * 0.5 ) {
    digitalWrite(braking_pin_out,false);
    #ifdef led_car_stop
    digitalWrite(led_int_pin,LOW);
    #endif
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

// -------------------- //
// ISR stuff below here //
// -------------------- //

void init_buffer() {
  for (int i = 0; i < buffersize; i++) {
    buffer_drive[i] = 0;
    buffer_roll[i] = 0;
  }
}

void ISR_drive() {
  //SW debounce 
  sei(); // Enables interrupts, for nested ISR
  unsigned long curr_time_ISR = micros();
  if ( curr_time_ISR < last_ISR_drive + SW_debounce_time) {
    goto exit_drive;
  }
  //Serial.println("Drive interrupt");
  write_buffer_drive(curr_time_ISR - last_ISR_drive);
  last_ISR_drive = curr_time_ISR;
  exit_drive:;
}

void ISR_roll() {
  //SW debounce 
  sei(); // Enables interrupts, for nested ISR
  unsigned long curr_time_ISR = micros();
  if (curr_time_ISR < last_ISR_roll + SW_debounce_time) {
    goto exit_roll;
  }
  //Serial.println("Roll interrupt");
  write_buffer_roll(curr_time_ISR - last_ISR_roll);
  last_ISR_roll = curr_time_ISR;
  exit_roll:;
}

void write_buffer_drive(unsigned long delta_time) {
  #ifdef led_buffer_full
  if (buffer_drive[buffer_pointer_drive_ISR] != 0) {        //If buffer is full
    digitalWrite(led_int_pin, HIGH);                     //Developer is stupid
    Serial.print("driv ");Serial.println(buffer_roll[buffer_pointer_drive_ISR]);
  }
  #endif
  buffer_drive[buffer_pointer_drive_ISR] = delta_time;    //Write to buffer
  buffer_pointer_drive_ISR ++;                            //Manage buffer pointer
  if (buffer_pointer_drive_ISR == buffersize) {
    buffer_pointer_drive_ISR = 0;
  }
}

void write_buffer_roll(unsigned long delta_time) {
  #ifdef led_buffer_full
  if (buffer_roll[buffer_pointer_roll_ISR] != 0) {        //If buffer is full
    digitalWrite(led_int_pin, HIGH);                     //Developer is stupid
    Serial.print("roll ");Serial.println(buffer_roll[buffer_pointer_roll_ISR]);
  }
  #endif 
  buffer_roll[buffer_pointer_roll_ISR] = delta_time;    //Write to buffer
  buffer_pointer_roll_ISR ++;                            //Manage buffer pointer
  if (buffer_pointer_roll_ISR == buffersize) {
    buffer_pointer_roll_ISR = 0;
  }
}

// If either buffer is full, set led low
void buffer_not_full(){
  #ifdef led_buffer_full
    if (buffer_roll[buffer_pointer_roll_ISR] == 0 ||
        buffer_drive[buffer_pointer_drive_ISR] == 0) {
    digitalWrite(led_int_pin, LOW);
  }
  #endif 
}

unsigned long get_buffer_drive() {
  unsigned long buffer_value = 0;
  if (buffer_drive[buffer_pointer_drive_get] != 0) {          //If new value aviable
    buffer_value = buffer_drive[buffer_pointer_drive_get];    //Get buffer value
    buffer_drive[buffer_pointer_drive_get] = 0;               //Rest buffer value

    buffer_pointer_drive_get ++;                              //Manage buffer pointer
    if ( buffer_pointer_drive_get == buffersize) {
      buffer_pointer_drive_get = 0;
    }
  }
  return buffer_value;
}

unsigned long get_buffer_roll() {
  unsigned long buffer_value = 0;
  if (buffer_roll[buffer_pointer_roll_get] != 0) {          //If new value aviable
    buffer_value = buffer_roll[buffer_pointer_roll_get];    //Get buffer value
    buffer_roll[buffer_pointer_roll_get] = 0;               //Rest buffer value

    buffer_pointer_roll_get ++;                              //Manage buffer pointer
    if ( buffer_pointer_roll_get == buffersize) {
      buffer_pointer_roll_get = 0;
    }
  }
  return buffer_value;
}