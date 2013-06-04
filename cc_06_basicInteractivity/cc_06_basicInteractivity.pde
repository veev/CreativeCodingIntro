
void setup() {
 size(800, 800); 
}

void draw() {
 background(255);
 
 if (mousePressed) {
   background(255, 0 ,0);
 }
 
  fill(0);
  ellipse(mouseX, mouseY, 40, 40); 
}

