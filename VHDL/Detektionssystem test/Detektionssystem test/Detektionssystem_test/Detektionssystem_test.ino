//ændres til den værdi der skal skrives på pinsne
int speedSignal = 239; //km/h

void setup() {
  Serial.begin(115200);

  for( int i = 23; i<54; i=i+2)
  {
    pinMode(i, INPUT);
  }

  for(int i = 38; i< 53; i+=2){
    pinMode(i, OUTPUT);
    bool speedToWrite = speedSignal & 1;
    speedSignal = speedSignal >> 1;
    digitalWrite(i, speedToWrite);
    Serial.print(speedToWrite);
  }

  
  Serial.println();

  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:

}
