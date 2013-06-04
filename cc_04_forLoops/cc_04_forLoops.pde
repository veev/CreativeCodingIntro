void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  fill(0);
  rectMode(CENTER);

  // this value lets us space out the squares
  int skip = 50;

  //recursive for loop
  for (int x = skip; x <= width - skip; x += skip) {
    for (int y = skip; y <= height - skip; y += skip) {
      rect(x, y, 20, 20);
    }
  }
}

