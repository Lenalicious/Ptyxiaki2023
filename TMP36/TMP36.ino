#define sensorPin A0

void setup() {
 // Begin serial communication at a baud rate of 9600:
 Serial.begin(9600);
 }

 void loop() {
 // Get a reading from the temperature sensor:
 int reading = analogRead(sensorPin);

 // Convert the reading into voltage:
 float voltage = reading * (5.0 / 1024.0);

 // Convert the voltage into the temperature in Celsius:
 float temperature = (voltage - 0.5) * 100;

 Serial.println(temperature);
 delay(100);
 }
