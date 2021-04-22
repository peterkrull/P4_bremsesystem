//Sender
//P4 - Nødstop til bil
unsigned long runTime = 5000;     //Runtime in ms.
unsigned long breakTime = 5000;   //Breaktime in ms.


int state = 0;
unsigned long timeOfOff = 0;
unsigned long timeOfStart = 0;

void indicatorLight() {
  if (state == 0) {
    digitalWrite(5, HIGH);  //drive
    digitalWrite(6, HIGH);  //break
    digitalWrite(7, HIGH);  //off
  } else  if (state == 1) {
    digitalWrite(5, HIGH);  //drive
    digitalWrite(6, LOW);   //break
    digitalWrite(7, LOW);     //off
  } else  if (state == 2) {
    digitalWrite(5, LOW);   //drive
    digitalWrite(6, HIGH);  //break
    digitalWrite(7, LOW);   //off
  } else  if (state == 3) {
    digitalWrite(5, LOW);   //drive
    digitalWrite(6, LOW);  //break
    digitalWrite(7, HIGH);   //off
  } else  if (state == 4) {
    digitalWrite(5, LOW);   //drive
    digitalWrite(6, LOW);  //break
    digitalWrite(7, LOW);   //off
  }
}


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  while(!Serial);

  pinMode(A5, INPUT_PULLUP); //Off
  pinMode(A4, INPUT_PULLUP); //break
  pinMode(A3, INPUT_PULLUP); //Drive
  pinMode(A2, INPUT_PULLUP); //Start: Drive for xx seconds, break for xx second, off


  pinMode(5, OUTPUT);       //Red - Off
  pinMode(6, OUTPUT);       //Yellow - Break
  pinMode(7, OUTPUT);       //Green - Drive


}

unsigned long prev_press = 0;
boolean prev_state = 0;

void loop() {
  // put your main code here, to run repeatedly:
  int holdtime = 0;

  boolean btn_offff = !digitalRead(A5);
  boolean btn_brake = !digitalRead(A4);
  boolean btn_drive = !digitalRead(A3);
  boolean btn_start = !digitalRead(A2);
  
  if (btn_offff == 1) {           //Off
    press_timer(1);
  }
  else if (btn_brake == 1) {      //Brake
    press_timer(2);
  }
  else if (btn_drive == 1) {      //Drive
    press_timer(3);
  }
  else if (btn_start == 1) {      //Start
    press_timer(4);
  } else {prev_state = 0;}

 
  if (millis() - prev_press > 1000){ // reset if press was a second ago
    state = 0;
  }
  
  indicatorLight();
  Serial.print(state);
  delay(20);  //Time ensures two messages is allways send one test period of reciver.
}

void press_timer(int state_in){
  if (prev_state == 0){
    prev_state = 1;
    prev_press = millis();
  }
  if (millis() - prev_press > 25){
    state = state_in;
  }
}
