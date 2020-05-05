void intro() {
  //background
  background(pink);

  //text title
  textSize(80);
  fill(blue);
  text("PEW PEW", width/4+shadowOffset, height/4+shadowOffset);
  fill(grey);
  text("PEW PEW", width/4, height/4);
}

void introClicks() {
  mode = GAME;
}
