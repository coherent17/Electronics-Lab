int brightness = 0;
int stepAmount = 5;

void setup(){
    pinMode(9, OUTPUT);
}

void loop(){
    analogWrite(9, brightness);
    brightness += stepAmount;
    if(brightness <= 0 || brightness >= 255){
        stepAmount = -1 * stepAmount;
    }
    delay(40);
}