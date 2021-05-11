// Parallel output pins
// Also known as PORTF
const int parPin[8] = {A0,A1,A2,A3,A4,A5,A6,A7};
const int ledPin[3] = {53,51,49};
const int ledBuiltIn = 13;
const int emergencyPin = 8;

int state = 0;                    // State message recieved from wireless module
unsigned long radio_timer = 0;    // Previous radio check
unsigned long lastMessage = 0;    // 0 Passive, 1 drive mode, 2 break mode
float testSpeed = 0;               // Variable to hold test speed

const float targetTestSpeed = 5;
boolean connection = 0;
boolean emergency = 0;

#define printing

void setup(){

  pinMode(emergencyPin,OUTPUT);
  digitalWrite(emergencyPin,HIGH);

  // Init pin modes
  for (int i = 0; i < 8; i++){
    pinMode(parPin[i], OUTPUT);
  }
  for (int i = 0; i < 3; i++){
    pinMode(ledPin[i], OUTPUT);
  }

  status_led(false);
  
  pinMode(ledBuiltIn , OUTPUT);

  // Init Serial3 for radio module
  Serial1.begin(9600);
  Serial.begin(115200);
  while(!Serial);
  while(!Serial1);
}

//
// Converts speed between 0 - 32 to 8 bit value
//

byte speedToByte(float Speed){
  // 0000 0000 =  0 km/t
  // 1111 1111 = 32 km/t

  // Sanity check
  if (Speed > 32){    
    Speed= 32;
  }

  // 255/32 = 7.96875
  return (byte)(((float)Speed)*7.96875);
}

void printPORTF(byte byteInput){
  PORTF = byteInput;
}


void status_led(boolean input_val){
  for (int i = 0; i < 3; i++){
    digitalWrite(ledPin[i],input_val);  
  }
}

//
// Recieves radio message and updates state
//

void radio() {
  if (millis() >= radio_timer+50){
    radio_timer = millis();
    while (Serial1.available()>0) {
      digitalWrite(13, HIGH);
      state = Serial1.read() - 48;         // Janky convertion from ASCI to decimal
      lastMessage = millis();
      digitalWrite(ledPin , HIGH);
    }
    if (lastMessage + 100 < millis()) { //Trouble. No radio connection.
      state = 5;                        //Car will stop
      digitalWrite(13, LOW);
    }
  }
}

// 
// Prints any arbitrary byte ending with a newline
//

void printByte(byte toPrint, boolean newline = true){
  Serial.print("B");
  for (int i = 0 ; i < 8 ; i ++){
    if (toPrint >> (7-i) & B00000001 > 0){
      Serial.print("1");
    } else {
      Serial.print("0");
    }
  }
  if (newline){
    Serial.print("\n");
  }
}

// 
// Main program loop
//

void emergencyBrakeSim(boolean reset = false){

  // Logical LOW = emergency
  if (reset == false){
    digitalWrite(emergencyPin, LOW);
    emergency = HIGH;  
  } else {
    digitalWrite(emergencyPin, HIGH); 
    emergency = LOW;  
  } 
}

//
// Prints info for debugging (uncomment printing def)
//

void printInfo(){
  Serial.println("\n");
  Serial.print("Conn  : ");
  if (connection) {
     Serial.println("True");
  } else {
    Serial.println("False");
  }

    Serial.print("Emerg : ");
  if (emergency) {
     Serial.println("True");
  } else {
    Serial.println("False");
  }
  
  Serial.print("State : "); Serial.println(state);
  Serial.print("Speed : "); Serial.println(testSpeed);
  Serial.print("Byte  : "); printByte(speedToByte(testSpeed));
}

// 
// Main program loop
//

void loop (){
  radio();
  switch (state){
    case 0 : // Connected
      connection = true;
      break;
    case 1 : // Reset test
      emergencyBrakeSim(true);
      testSpeed = 0;
      status_led(false);
      break;
    case 2 : // Set target speed
      testSpeed = targetTestSpeed;
      break;
    case 3 : // Reset sped
      testSpeed = 0;
      break;
    case 4 : // Emergency brake
      emergencyBrakeSim();
      delay(25);
      status_led(true);
      break;
    //case 5:
      //int y;
  }

  // Check for lost state
  if (state != 5){
    connection = true;
  } else {
    connection = false;
  }

  // If connection is lost, disable motors
  if (connection == false){
    testSpeed = 0;
  }

  // For manual byte speeds use LUT
  // https://docs.google.com/spreadsheets/d/1tjVbEJDQM86xEJ1ZML0fflwT5099Dv2hnQkCQ6XT2BE/edit#gid=0
  // printPORTF(insert_speed_from_lut_here);

  // For automatic speed to byte rounding
  printPORTF(speedToByte(testSpeed));

  #ifdef printing
  printInfo();
  #endif

  delay(250);
  
}
