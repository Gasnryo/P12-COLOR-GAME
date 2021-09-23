void intro() {
  
  //background(0,100,100);
  image(gif[f], 0, 0, width, height);
  
  if (frameCount % 3 == 0) f = f+1;
  if (f == numberOfFrames) f = 0;
  
  //Intro text
  textFont(School);
  textAlign(CENTER, CENTER);
  textSize(75);
  
  //Random Colors
  fill(r, g, b);
  if (frameCount % 3 == 0) {
  r = int(random(40, 235));
  g = int(random(40, 235));
  b = int(random(40, 235));
  }
  
  text("GENERIC", width/2, height*.05);
  text("COLOR GAME", width/2, height*.2);
  text("#28", width/2, height*.35);
  

  
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
