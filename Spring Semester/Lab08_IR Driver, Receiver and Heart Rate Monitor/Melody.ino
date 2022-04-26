#define NOTE_CS4 277
#define NOTE_D4  294
#define NOTE_E4  330
#define NOTE_FS4 370
#define NOTE_GS4 415
#define NOTE_A4  440
#define NOTE_B4  494
#define NOTE_CS5 554
#define NOTE_D5  587
#define NOTE_E5  659

int tempo = 160;

int melody[] = {
  NOTE_E5, NOTE_D5, NOTE_FS4, NOTE_GS4, 
  NOTE_CS5, NOTE_B4, NOTE_D4, NOTE_E4, 
  NOTE_B4, NOTE_A4, NOTE_CS4, NOTE_E4,
  NOTE_A4
};

int durations[] = {
  8, 8, 4, 4, 8, 8, 4, 4, 8, 8, 4, 4, 2  
};

int notes = sizeof(melody) / sizeof(int);
int wholenote = (60000 * 4) / tempo;
int noteDuration = 0;

void setup() {
  for (int i = 0; i < notes; i++) {
    noteDuration = (wholenote) / durations[i];
    tone(8, melody[i], noteDuration*0.9);
    delay(noteDuration);
    noTone(8);
  }
}

void loop() {}
