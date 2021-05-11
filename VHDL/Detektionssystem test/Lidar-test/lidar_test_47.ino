#include <Arduino.h>     // Every sketch needs this
#include <Wire.h>        // Instantiate the Wire library
#include <TFLI2C.h>      // TFLuna-I2C Library v.0.1.0

TFLI2C tflI2C;

int16_t  tfDist;    // distance in centimeters
int16_t  tfAddr = 0x10;  // Default I2C address
                                // Set variable to your value

void setup()
{
    Serial.begin( 115200);  // Initalize serial port
    Wire.begin();           // Initalize Wire library
    Serial.println( "TFLI2C example code simplified"); // Say "Hello!"
    Serial.println( "25 Sep 2020");                    // and the date.
}

void loop()
{
    if( tflI2C.getData( tfDist, tfAddr)) // If read okay...
    {
        Serial.print("Dist: ");
        Serial.println(tfDist);         // print the data...
    }
   

    delay( 50);
}
