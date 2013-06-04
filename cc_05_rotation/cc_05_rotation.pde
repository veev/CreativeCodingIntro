void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  
  fill(0);
  rectMode(CENTER);
  int skip = 50;
  
  for (int x = skip; x <= width - skip; x += skip) {
    for (int y = skip; y <= height - skip; y += skip) {
      //before you do a rotation, call this function
      pushMatrix();
      //translate the origin from (0, 0) to (x, y)
      translate(x, y);
      //rotate around the squares' origins based on mouse position
      rotate(mouseX / 100.0);
      //draw rectangle at (0, 0) since (x, y) is the new origin
      rect(0, 0, 20, 20);
      //call this function to end the translation
      popMatrix();
    }
  }
}

