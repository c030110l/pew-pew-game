//Game Objects
ArrayList<GameObject>objects;
Player myPlayer;

//color pallette
color black  = #000000;
color white  = #FFFFFF;
color grey   = #8E949B;
color pink   = #F7D9D9;
color orange = #F0B377;
color yellow = #E3D480;
color blue   = #5D7DA5;

//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//key variables;
boolean wkey, akey, skey, dkey, spacekey;

//text
PFont font;
int shadowOffset=8;

//#################################### SETUP ###############################################

void setup() {
  //graphics
  size(800, 800);
  rectMode(CENTER);
  noStroke();

  //initialize key variables
  wkey = akey = skey = dkey = spacekey = false;

  //Game Object initializations
  objects= new ArrayList<GameObject>();
  myPlayer= new Player();
  objects.add(myPlayer);
}

//##################################### DRAW ################################################

void draw() {
  println(objects.size());
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
