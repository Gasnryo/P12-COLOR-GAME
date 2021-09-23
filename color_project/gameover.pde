void gameover() {
  background(100, 30, 30);

  rotate = rotate+2;
  if (rotate >= 360) rotate = 0;

  //the "please dont remove marks" section (gameover text)
  fill(255, 0, 0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rotate));
  textSize(50);
  text("YOU SUCK LOL LOSER", 0, 0);
  textSize(20);
  text("please dont remove marks for calling you a loser thanks", 0, 30);
    popMatrix();

  //Highscore
  textSize(100);
  text ("Score: "+points, width/2, height*0.75);
  text ("Record: "+highscore, width/2, height*0.85);
}

void gameOverClicks() {
  setup();
}
