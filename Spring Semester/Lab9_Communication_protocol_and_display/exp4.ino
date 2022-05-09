int pinA = 13, pinB = 12, pinC = 11, pinD = 10, pinE = 9, pinF = 8, pinG = 7, pinP = 6;

int left = 5, right = 4;

void setup(){
	pinMode(pinA, OUTPUT);pinMode(pinB, OUTPUT);pinMode(pinC, OUTPUT);pinMode(pinD, OUTPUT);
	pinMode(pinE, OUTPUT);pinMode(pinF, OUTPUT);pinMode(pinG, OUTPUT);pinMode(pinP, OUTPUT);
	pinMode(left, OUTPUT);pinMode(right, OUTPUT);
}

void showSevenSeg(int A, int B, int C, int D, int E, int F, int G, int P){
	digitalWrite(pinA, A);digitalWrite(pinB, B);digitalWrite(pinC, C);digitalWrite(pinD, D);
	digitalWrite(pinE, E);digitalWrite(pinF, F);digitalWrite(pinG, G);digitalWrite(pinP, P);
}

void loop(){
	digitalWrite(right, HIGH);
	digitalWrite(left, LOW);
	showSevenSeg(1,0,0,1,1,1,1,1); //1
	delay(5);
	digitalWrite(right, LOW);
	digitalWrite(left, HIGH);
	showSevenSeg(0,1,0,0,0,0,0,1); //6
	delay(5);
}
