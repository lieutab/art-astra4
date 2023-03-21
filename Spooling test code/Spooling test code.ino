// Include the library
#include <Servo.h>

// Create the servo object
Servo myservo;
int speedControl

// Setup section to run once
void setup() {
  myservo.attach(9); // attach the servo to our servo object

  myservo.write(90); 
}

// Loop to keep the motor turning!
void loop() {
  speedControl=45 //speed can be a function of pressure or other variables
  myservo.write(speedControl); // rotate the motor counterclockwise

  delay(10000); // keep rotating for 10 seconds (10000 milliseconds)

  myservo.write(90); // stop the motor
}