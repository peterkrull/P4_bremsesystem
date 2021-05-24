void setup() {
  for (int i = 4; i < 14 ; i++) {
    pinMode(i, OUTPUT);
  }
  for (int i = 6; i < 14 ; i++) {
    digitalWrite(i, LOW);
  }
  digitalWrite(5,HIGH);
  digitalWrite(4,HIGH);

   //Sætter ønsket hastighed
  digitalWrite(4, HIGH);

  
  //Sætter motorkraft
  for (int i = 13; i > 6; i--) {
    digitalWrite(i, HIGH);
  }
  digitalWrite(6, LOW);
  delay(1000);
}

void loop() {
}
