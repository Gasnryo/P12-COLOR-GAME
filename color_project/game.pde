void game() {
  background(0, 100, 100);
  
  println("LEFT: "+matchpoints+" RIGHT: "+nomatchpoints+" Points: "+points+" highscore "+highscore);
  
  //50% match
  if (timer == 0) {
    match = int(random(1, 3));
  }

  if (timer == 0 && match == 1) {
    c = w;
  } else if (timer == 0 && match == 2) {
    w = int(random(0, 6));
    c = int(random(0, 6));
    while (w==c) {
      w = int(random(0, 6));
      c = int(random(0, 6));
    }
    //FIX RNG PLEASE! if match = 2, prevent from matching
  }

  //if (match == 1) {
  //  c = w;
  //} else if (match == 2) {
  //  w = int(random(0, 6));
  //  c = int(random(0, 6));
  //}




  //Centre Line
  stroke(0);
  strokeWeight(5);
  line(width/2, 0, width/2, height);

  //On screen text
  fill(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("MATCH", width*0.25, height/2);
  text("NO MATCH", width*0.75, height/2);

  //points
  fill(0);
  text(points, width*0.25, height*0.25);

  //Colored Word
  fill(colors[c]);
  text(words[w], width/2, height/2);

  //Mechanical timer
  timer = timer+1;
  if (timer == 180) mode = 2;

  //Visual timer
  stroke(0);
  noFill();
  strokeWeight(15);
  ellipseMode(CENTER);
  arc(600, 600, 150, 150, radians(-90), radians(timer*2-90));
  noStroke();
  fill(timer+75, 0, 0);
  circle(600, 600, 150);
  fill(0);
  textAlign(CENTER, CENTER);
  text(timer/60, 600, 594);
  
  //Highscore
  if (points > highscore) {
   highscore = points;
  }
}

void gameClicks() {
  //Match/NoMatch
  if (mouseX < width/2) {
    //guess match
    if (w == c) {
      points++;
      
      matchpoints++;
      
      timer = 0;
      w = int(random(0, 6));
      c = int(random(0, 6));
    } else {
      mode = 2;
    }
  } else {
    //guess nomatch
    if (w == c) {
      mode = 2;
    } else {
      points++;
      
      nomatchpoints++;

      timer = 0;
      w = int(random(0, 6));
      c = int(random(0, 6));
    }
  }
}
