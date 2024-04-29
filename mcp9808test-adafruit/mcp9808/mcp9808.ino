#include <Wire.h>
#include "Adafruit_MCP9808.h"


Adafruit_MCP9808 tempsensor = Adafruit_MCP9808();

void setup() {
  Serial.begin(9600);
  while (!Serial); 
  Serial.println("MCP9808 temp sensor");
  
  if (!tempsensor.begin(0x18)) {
    Serial.println("Couldn't find MCP9808! Check your connections and verify the address is correct.");
    while (1);
  }
    
   Serial.println("Found MCP9808!");

  tempsensor.setResolution(0);
}

void loop() {

  float c = tempsensor.readTempC();
  Serial.print(c, 2); 
  Serial.println("\t");
  
  delay(100);

}
