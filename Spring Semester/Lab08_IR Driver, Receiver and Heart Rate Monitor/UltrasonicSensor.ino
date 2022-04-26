int inter_pin = 2;
int trigger_pin = 12;
int echo_pin = 13;
long duration, cm;

void setup() {
  pinMode(echo_pin, INPUT);
  pinMode(trigger_pin, OUTPUT);
  attachInterrupt(digitalPinToInterrupt(inter_pin), ultrasonic, RISING);
  Serial.begin(9600);
}

void loop(){
 }

void ultrasonic() {
  pinMode(trigger_pin, OUTPUT);
  digitalWrite(trigger_pin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigger_pin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigger_pin, LOW);
  pinMode(echo_pin, INPUT);
  duration = pulseIn(echo_pin, HIGH);
  cm = duration / 29 / 2;
  Serial.print("Distance : ");
  Serial.print(cm);
  Serial.println(" cm");
  delay(500);
}
