// Parallel output pins
// Also known as PORTF
const int parPin[8] = {A0,A1,A2,A3,A4,A5,A6,A7};
const int ledPin = 8;
const int ledBuiltIn = 13;

int state = 0;                    // State message recieved from wireless module
unsigned long radio_timer = 0;    // Previous radio check
unsigned long lastMessage = 0;    // 0 Passive, 1 drive mode, 2 break mode
byte testSpeed = 0;               // Variable to hold test speed

const float targetTestSpeed = 30;
boolean connection = 0;

#define printing

void setup(){

  // Init pin modes
  for (int i = 0; i < 8; i++){
    pinMode(parPin[i], OUTPUT);
  }
  pinMode(ledPin , OUTPUT);
  pinMode(ledBuiltIn , OUTPUT);

  // Init Serial3 for radio module
  //Serial3.begin(9600);
  Serial.begin(115200);
  //while(!Serial3);
}

void loop (){
 // radio();
  switch (state){
    case 0 :
      connection = true;
    case 1 :
      int y;
    case 2 :
      testSpeed = 0;
    case 3 : 
      testSpeed = targetTestSpeed;
    case 4 :
      int z;
    case 5:
      connection = false;
  }

  // For manual byte speeds use LUT
  // https://docs.google.com/spreadsheets/d/1tjVbEJDQM86xEJ1ZML0fflwT5099Dv2hnQkCQ6XT2BE/edit#gid=0
  // printPORTF(insert_speed_from_lut_here);

  // For automatic speed to byte rounding
  printPORTF(speedToByte(targetTestSpeed));

}

// Converts speed between 0 - 32 to 8 bit value
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

void radio() {
  if (millis() >= radio_timer+50){
    radio_timer = millis();
    while (Serial3.available()>0) {
      digitalWrite(13, HIGH);
      state = Serial3.read() - 48;         // Janky convertion from ASCI to decimal
      lastMessage = millis();
      digitalWrite(pin_led , HIGH);
    }
    if (lastMessage + 100 < millis()) { //Trouble. No radio connection.
      state = 5;                        //Car will stop
      digitalWrite(13, LOW);
    }
  }
}


void printByte(byte toPrint){
  Serial.print("B");
  for (int i = 0 ; i < 8 ; i ++){
    if (toPrint >> (7-i) & B00000001 > 0){
      Serial.print("1");
    } else {
      Serial.print("0");
    }
  }
  Serial.print("\n");
}
