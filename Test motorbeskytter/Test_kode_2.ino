void setup() {
  for (int i = 4; i < 14 ; i++) {
    pinMode(i, OUTPUT);
  }
  for (int i = 6; i < 14 ; i++) {
    digitalWrite(i, LOW);
  }
  digitalWrite(5, HIGH);
  digitalWrite(4, LOW);
}

void loop() {
  //Sætter motorkraft
  for (int i = 13; i > 6; i--) {
    digitalWrite(i, LOW);
  }
  digitalWrite(6, HIGH);

  //Sætter ønsket hastighed
  delay(1000);
  digitalWrite(4, LOW);
  delay(1000);

  //Sætter motorkraft
  for (int i = 13; i > 6; i--) {
    digitalWrite(i, LOW);
  }
  digitalWrite(6, HIGH);

  //Sætter ønsket hastighed
  delay(1000);
  digitalWrite(4, HIGH);
  delay(1000);
}
