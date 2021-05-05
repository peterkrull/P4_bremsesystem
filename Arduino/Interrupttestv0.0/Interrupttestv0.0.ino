const int SW_debounce_time = 1000000;   //time in us
const int buffersize = 10;
const int buffer_full_led = 13;

unsigned long last_ISR_drive, last_ISR_roll;
unsigned long buffer_drive[buffersize];
unsigned long buffer_roll[buffersize];

unsigned int buffer_pointer_drive_ISR = 0;
unsigned int buffer_pointer_roll_ISR = 0;
unsigned int buffer_pointer_drive_get = 0;
unsigned int buffer_pointer_roll_get = 0;



void init_buffer() {
  for (int i = 0; i < buffersize; i++) {
    buffer_drive[i] = 0;
    buffer_roll[i] = 0;
  }
}

void ISR_drive() {
  //SW debounce 
  if ( micros() < last_ISR_drive + SW_debounce_time) {
    goto exit_drive;
  }
  Serial.println("Drive interrupt");
  write_buffer_drive(micros() - last_ISR_drive);
  last_ISR_drive = micros();
exit_drive:;
}

void ISR_roll() {
  //SW debounce 
  if (micros() < last_ISR_roll + SW_debounce_time) {
    goto exit_roll;
  }
  Serial.println("Roll interrupt");
  write_buffer_roll(micros() - last_ISR_roll);
  last_ISR_roll = micros;
exit_roll:;
}

void write_buffer_drive(unsigned long delta_time) {
  if (buffer_drive[buffer_pointer_drive_ISR] != 0) {        //If buffer is full
    digitalWrite(buffer_full_led, LOW);                     //Developer is stupid
  }

  buffer_drive[buffer_pointer_drive_ISR] = delta_time;    //Write to buffer
  buffer_pointer_drive_ISR ++;                            //Manage buffer pointer
  if (buffer_pointer_drive_ISR == buffersize) {
    buffer_pointer_drive_ISR = 0;
  }
}

void write_buffer_roll(unsigned long delta_time) {
  if (buffer_roll[buffer_pointer_roll_ISR] != 0) {        //If buffer is full
    digitalWrite(buffer_full_led, LOW);                     //Developer is stupid
  }

  buffer_roll[buffer_pointer_roll_ISR] = delta_time;    //Write to buffer
  buffer_pointer_roll_ISR ++;                            //Manage buffer pointer
  if (buffer_pointer_roll_ISR == buffersize) {
    buffer_pointer_roll_ISR = 0;
  }
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

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  delay(500);
  Serial.println("Hallow world");

  init_buffer();
  pinMode(buffer_full_led, OUTPUT);
  digitalWrite(buffer_full_led, HIGH);

  attachInterrupt(digitalPinToInterrupt(2), ISR_drive, CHANGE);
  attachInterrupt(digitalPinToInterrupt(3), ISR_roll, CHANGE);

}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("Value from drive buffer is :"); Serial.println(get_buffer_drive());
  Serial.print("Value from roll  buffer is :"); Serial.println(get_buffer_roll());
  delay(500);

}
