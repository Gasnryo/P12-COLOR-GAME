void gameover() {
  background(100, 0, 0);
  
  fill(255, 0, 0);
  text("YOU SUCK LOL LOSER", width/2, height/2);
  
  //Highscore
  text ("HS: "+highscore, width/2, height*0.75);
}

void gameOverClicks() {
  setup();
}
