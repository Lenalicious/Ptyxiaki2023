#define sensorPin A0

void setup() {
 Serial.begin(9600);
 }

 void loop() {
 int reading = analogRead(sensorPin);

 float voltage = reading * (5.0 / 1024.0);

 float temperature = (voltage - 0.5) * 100;

 Serial.println(temperature);
 delay(100);
 }
