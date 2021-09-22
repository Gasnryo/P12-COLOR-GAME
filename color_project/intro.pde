void intro() {
  
  background(0,100,100);
  
  //Intro text
  textFont(School);
  textAlign(CENTER, CENTER);
  textSize(100);
  fill(0);
  text("GENERIC", width/2, height*.20);
  text("COLOR GAME", width/2, height*.35);
  text("#28", width/2, height*.5);
  
  textSize(25);
  text("UNDER CONSTRUCTION ~~ GIF NEEDED", width/2, height*.9);
  
  //Start Button
  stroke(0);
  strokeWeight(5);
  fill(0, 255, 255);
  circle(width/2, height*0.75, 100);
  
}

void introClicks() {
  //Start Button
  if (dist(width/2, height*0.75, mouseX, mouseY) <=50) {
   mode = 1; 
  }
}
