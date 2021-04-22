int state = 0;

const int freq = 100;
unsigned long prev_lo = 0;
unsigned long prev_hi = 0;
unsigned long filter_prev = 0;
const float pwm_kicker = 1000000/(float)freq;

unsigned long lastMessage = 0;    //0 Stand still, 1 drive mode, 2 break mode

const int pin_stopped = A0;
const int pin_drive = 51;
const int pin_reverse = 53;
const int pin_led = 13;
const int pin_pot = A1;

// Amplifies linear filter speed
float time_factor = 1; // lower = slower     &     higher = faster
float test_speed = 1; // lower = slower     &     higher = faster

int hightime;

unsigned long radio_timer=0;

float current_duty;

//#define printing

void setup() {
  // put your setup code here, to run once:  
  #ifdef printing
  Serial.begin(115200);
  while(!Serial);
  #endif
  Serial1.begin(9600);
  while(!Serial1);

  #ifdef printing
  Serial.println("Serial initiated");
  #endif

  // LED setup
  pinMode(pin_led,OUTPUT);
  digitalWrite(pin_drive,LOW);

  // Drive setup
  pinMode(pin_drive,OUTPUT);
  digitalWrite(pin_drive,LOW);

  // Reverse setup
  pinMode(pin_reverse,OUTPUT);
  digitalWrite(pin_reverse,LOW);

  // Stopped trigger input
  pinMode(pin_stopped,INPUT);
  #ifdef printing
  Serial.println("Setup finished");
  #endif
}



void loop() {
  // put your main code here, to run repeatedly:
  radio();
  Serial.print("kicker"); Serial.println(pwm_kicker);
  Serial.print("STATE"); Serial.println(state);
  if (state == 1) {}
  else if (state == 2){
     drive_script_v1();
     state = 3;
  } else if (state == 3) {
    digitalWrite(pin_drive,LOW);
    digitalWrite(pin_reverse,LOW);
    #ifdef printing
    Serial.print("STOPPED");
    #endif
  } else if (state == 4){
    Serial.println("*** STATE 4 ENTERED ***");
    stop_script();
    state = 3;
  }
}

void radio() {
  if (millis() >= radio_timer+50){
    radio_timer = millis();
    while (Serial1.available()>0) {
      digitalWrite(13, HIGH);
      int serialval = Serial1.available();
      state = Serial1.read() - 48;         //Convert from ASCI to decimal (old)
      #ifdef printing
      Serial.print(state);
      #endif
      lastMessage = millis();
      digitalWrite(pin_led , HIGH);
    }
    if (lastMessage + 100 < millis()) { //Trouble. No radio connection.
      state = 5;                        //Car will stop
      digitalWrite(13, LOW);
    }
  }
}

float lin_filter(float input_duty, boolean default_bhvr){
  float calculated;
  unsigned long curr_time = millis();
  if (curr_time >= filter_prev + 5){
    int delta = curr_time - filter_prev;
    filter_prev = curr_time;
    if ( input_duty > current_duty ) {
      calculated = current_duty + (delta*0.001*time_factor);
    } else if ( input_duty < current_duty ){
      calculated = current_duty - (delta*0.001*time_factor);
    } 
  }
  if (default_bhvr == false){
    calculated = input_duty;
  }
    // value check
       if (calculated > 1){calculated = 1;}
  else if (calculated < -1){calculated = -1;}
  
  return calculated;
}

void pwm_out_v2(float duty){

  // Duty range validation
       if (duty > 1){duty = 1;}
  else if (duty < -1){duty = -1;}

  unsigned long curr_time = micros();
  
  if (curr_time >= prev_lo + pwm_kicker){ // PWM signal HIGH
    prev_lo = curr_time;
    hightime = (int)((1/(float)freq)*(1-abs(duty))*1000000);
    prev_hi = curr_time + pwm_kicker - hightime;
    if (duty < 0.01 && duty > -0.01){ // If duty cycle is low => considered 0
      digitalWrite(pin_drive,LOW);
    } else if (duty >= 0.01) {
      digitalWrite(pin_drive,HIGH);
      digitalWrite(pin_reverse,LOW);
    } else if (duty <= -0.01) {
      digitalWrite(pin_drive,HIGH);
      digitalWrite(pin_reverse,HIGH);
    } 
  } else if (curr_time >= prev_hi){ // PWM signal LOW
    prev_hi = prev_hi + pwm_kicker;
    digitalWrite(pin_drive,LOW);
  }
}


void scriptlet(unsigned long timeunder, float wanted, boolean linear, boolean stopping = false){
    boolean stopped = 0;
    unsigned long start_timer = millis();
    while (millis() < timeunder + start_timer && state != 3 && state != 5 && stopped == 0){
      if (stopping == true ){
        stopped = digitalRead(pin_stopped);
      }
    //delay(2);  
    current_duty = lin_filter(wanted, linear);
    #ifdef printing
    Serial.print("read : ");Serial.print(wanted);Serial.print(" - curr : ");Serial.println(current_duty);
    #endif
    pwm_out_v2(current_duty);

    radio();
  }
}

// Main test script
void drive_script_v1(){
  time_factor = 0.4; // Slower accel
  test_speed = 1;
  scriptlet(50,0,false,false); // 100 ms off-time
  scriptlet(3000,test_speed,true, false); // 3 seconds of accel
  time_factor = 2; // Faster brake
  test_speed = 1;
  scriptlet(50,0,false,false); // 100 ms off-time
  digitalWrite(pin_reverse, HIGH);
  scriptlet(50,0,false,false); // 100 ms off-time
  scriptlet(2000,-test_speed,true, true); // Brake for 3 seconds or until stopped - last param = stopping
  scriptlet(250,0,false,false); // Force stop-state
  digitalWrite(pin_reverse, LOW);
}


void stop_script(){
  time_factor = 1;
  test_speed = 1;
  scriptlet(50,0,false,false); // 100 ms off-time
  digitalWrite(pin_reverse, HIGH);
  scriptlet(50,0,false,false); // 100 ms off-time
  scriptlet(3000,-test_speed,true, true); // Brake for 2 seconds or until stopped
  scriptlet(250,0,false,false); // Force stop-state
  digitalWrite(pin_reverse, LOW);
}
