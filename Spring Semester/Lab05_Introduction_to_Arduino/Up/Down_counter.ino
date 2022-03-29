byte pinA=13, pinB=12, pinC=11, pinD=10, pinE=9, pinF=8, pinG=7, pinP=6;
byte pushButton = 2;

volatile byte State = High;
volatile int index = 0;

void pushbutton(){
    State = !State;
}

void setup(){
    pinMode(pinA, OUTPUT); pinMode(pinB, OUTPUT); pinMode(pinC, OUTPUT);
    pinMode(pinD, OUTPUT); pinMode(pinE, OUTPUT); pinMode(pinF, OUTPUT);
    pinMode(pinG, OUTPUT); pinMode(pinP, OUTPUT);
    pinMode(pushButton, INPUT);
    attachInterrupt(digitalPinToInterrupt(2), pushbutton, Falling);
}

void showSevenSeg(byte A, byte B, byte C, byte D, byte E, byte F, byte G, byte P) {
    digitalWrite(pinA, A); digitalWrite(pinB, B); digitalWrite(pinC, C);
    digitalWrite(pinD, D); digitalWrite(pinE, E); digitalWrite(pinF, F);
    digitalWrite(pinG, G); digitalWrite(pinP, P);
}

void show(int i){
    if(i==0)        showSevenSeg(0,0,0,0,0,0,1,1); //0
    else if(i==1)   showSevenSeg(1,0,0,1,1,1,1,1); //1
    else if(i==2)   showSevenSeg(0,0,1,0,0,1,0,1); //2
    else if(i==3)   showSevenSeg(0,0,0,0,1,1,0,1); //3
    else if(i==4)   showSevenSeg(1,0,0,1,1,0,0,1); //4
    else if(i==5)   showSevenSeg(0,1,0,0,1,0,0,1); //5
    else if(i==6)   showSevenSeg(0,1,0,0,0,0,0,1); //6
    else if(i==7)   showSevenSeg(0,0,0,1,1,0,1,1); //7
    else if(i==8)   showSevenSeg(0,0,0,0,0,0,0,1); //8
    else if(i==9)   showSevenSeg(0,0,0,0,1,0,0,1); //9
}

void loop(){
    while(State){
        show(index);
        delay(500);
        if(index++ == 9) index = 0;
    }

    while(!State){
        show(index);
        delay(500);
        if(index-- == 0) index = 9;
    }
}