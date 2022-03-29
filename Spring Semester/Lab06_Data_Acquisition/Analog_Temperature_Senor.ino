float Temperature;

void setup(){
    Serial.begin(9600);
    pinMode(A0, INPUT);
}

void loop(){
    Temperature = analogRead(A0);
    Temperature = (Temperature / 1024 * 5) / 0.01;
    Serial.print("Temperature: ");
    Serial.print(Temperature);
    Serial.println(" degree celsius");
    delay(300);
}