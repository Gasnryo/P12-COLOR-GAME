void tactile (float x, float y, int r, color c1, color c2) {
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke(c2); 
 } else {
  stroke(c1);
 }
}
