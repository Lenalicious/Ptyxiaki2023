#define sensorPin A0

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
    //Read Raw ADC Data
  int adcData = analogRead(sensorPin);
  // Convert that ADC Data into voltage
  float voltage = adcData * (5.0 / 1024.0);
  // Convert the voltage into temperature 
  float temperature = voltage * 100;
  // Print the temperature data
  //Serial.print("Temperature: ");
  Serial.println(temperature);
  //Serial.println("*C");
  delay(100); // wait a second between readings
}
