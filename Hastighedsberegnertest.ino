
void setup() {
  Serial.begin(115200); 
  pinMode(A0,INPUT); 
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  pinMode(A4,INPUT);
  pinMode(A5,INPUT); 
  pinMode(A6,INPUT);
  pinMode(A7,INPUT);  
}

void loop() {
    float tal = 0;  
    float gange = 0.11765;  
    float hastighed = 0;  
  Serial.print("Maalt Vaerdier er: "); 
  if(digitalRead(A0)== 1){
    Serial.print(1); 
    tal= tal+128;
  }
  else {
    Serial.print(0); 
  }

  if(digitalRead(A1)== 1){
    Serial.print(1); 
      tal= tal+64;
    }
    else {
    Serial.print(0); 
  }
  
   if(digitalRead(A2)== 1){
    Serial.print(1); 
      tal= tal+32;
  }
  else {
    Serial.print(0); 
  }
  
  if(digitalRead(A3)== 1){
    Serial.print(1); 
      tal= tal+16;
  }
  else {
    Serial.print(0); 
  }
  
  if(digitalRead(A4) == 1){
    Serial.print(1); 
    tal=tal+8;
  }
  else {
    Serial.print(0); 
  }
  
  if(digitalRead(A5)== 1){
    Serial.print(1); 
      tal= tal+4; 
  }
  else {
    Serial.print(0); 
  }

  if(digitalRead(A6)== 1){
    Serial.print(1); 
      tal= tal+2;
  }
  else {
    Serial.print(0); 
  }

  if(digitalRead(A7)== 1){
    Serial.print(1);
    tal=tal+1;
  }
  else {
    Serial.print(0); 
  }
  Serial.println();
  Serial.print("Heltal er: "); Serial.println(tal); 
  hastighed = tal*gange;  
  Serial.print("Hastigheden er: "); Serial.println(hastighed); 
  delay(100);  
  Serial.println();
}
