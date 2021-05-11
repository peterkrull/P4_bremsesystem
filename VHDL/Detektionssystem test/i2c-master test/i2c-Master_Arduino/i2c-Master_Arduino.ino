/*
 * 
/*Tager input fra FPGA og printer den binary værdi samt decimaltal for det
 * Input er 22 til 52 hvor der tages hver anden 22 er mindst betydende og 52 er mest betydende
 */

int speedSignal = 239; //km/h

void setup() {
  Serial.begin(115200);
  Serial.println("HEELO WORLD");

  for( int i = 23; i<54; i=i+2)
  {
    pinMode(i, INPUT);
  }

  
  Serial.println();

  delay(1000);
}
  long int tal = 0;  // Til at omregne fra binær til decimal tal 

void loop() { 
  
  Serial.print("Målt Værdi er: ");
  for(int i = 35; i<54; i+=2){
    tal = tal << 1;
    if(digitalRead(i) == 1){
      Serial.print("1");
      tal += 1;
    }
    else Serial.print("0");
    
  }
 
  
  Serial.println();
  Serial.print("afstanden er: "); Serial.println(tal);  //printer afstanden 
  delay(500);
  Serial.println();
  tal= 0; 
}
