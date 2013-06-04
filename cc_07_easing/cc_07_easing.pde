float x = 0;
float y = 0;
float targetX = 0;
float targetY = 0;
float easing = 0.1;

void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(255);
  fill(0);

  // Calculates new x/y/z coords based on target coords and current coords
  // Uses easing factor for smooth animation
  targetX = mouseX;
  targetY = mouseY;
  x += (targetX - x) * easing;
  y += (targetY - y) * easing;

  ellipse(x, y, 40, 40);
}

