boolean a = 0;

void setup() {
  for (int i = 4; i < 14 ; i++) {
    pinMode(i, INPUT);
  }
  for (int i = 6; i < 14 ; i++) {
    digitalWrite(i, LOW);
  }
    digitalWrite(5,HIGH);
    
}

void loop() {
  //Sætter ønsket hastighed
  digitalWrite(4, HIGH);

  //Sætter motorkraft
  for (int i = 13; i > 5; i--) {
    digitalWrite(i, LOW);
    delay(1000);
  }
  for (int i = 13; i > 5; i--) {
    digitalWrite(i, HIGH);
    delay(1000);
  }

  //Nødbrems stadie ændres hvert sekund
  delay(1000);
  digitalWrite(5, LOW);

  //Sætter motorkraft
  for (int i = 13; i > 5; i--) {
    digitalWrite(i, LOW);
    delay(1000);
  }
  for (int i = 13; i > 5; i--) {
    digitalWrite(i, HIGH);
    delay(1000);
  }
}
