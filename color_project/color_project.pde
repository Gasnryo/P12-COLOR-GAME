/*
Grayson Lilly
 1-4
 Color Project
 I'll be honest I have absolutely no idea what i'm doing this time around,
 and i'm very glad the teacher posts help videos often :D
 
 Does Mr Pelletier get offended if i watch his video in 2x speed to get through it
 faster? So many questions! What if I use adblock?
 */

//Game Arrays
String[] words;
color[] colors;

//Colors
color red = #FF0000;
color blue = #0319FF;
color green = #0EFF03;
color yellow = #FFE603;
color magenta = #FF03E6;
color white = #FFFFFF;

int r;
int g;
int b;

//random color/word
int w;
int c;

//Font(s)
PFont School;

//Gif(s)
PImage[] gif;
int numberOfFrames;
int f;

//Variables
int points;
int highscore = 0;
int timer;
int match;

//temp var
int matchpoints;
int nomatchpoints;


//Mode Framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

void setup() {
  
  //Array Setup
  words = new String[6];
  colors = new color[6];

  //Puzzle Array Setup
  words[0] = "red";
  colors[0] = red;
  words[1] = "blue";
  colors[1] = blue;
  words[2] = "green";
  colors[2] = green;
  words[3] = "yellow";
  colors[3] = yellow;
  words[4] = "pink";
  colors[4] = magenta;
  words[5] = "white";
  colors[5] = white;
  
  w = int(random(0, 6));
  c = int(random(0, 6));
  
  //variable setup
  points = 0;
      //highscore
  timer = 0;
  
  //Font setup
  School = createFont("School.otf", 200);
  
  //gif setup
  numberOfFrames = 12;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_" +i+ "_delay-0.1s.gif");
    i++;
  }

  size(800, 800);
  mode = 0;
}

void draw() {
  if (mode == 0) {
    intro();
  } else if (mode == 1) {
    game();
  } else if (mode == 2) {
    gameover();
  } else {
    println("ERROR: YOURE A LOSER STUPID IDIOT UR CODE DOESNT WORK FOR THE LOVE OF GOD FIX IT! INVALID MODE:"+mode);
  }
}
