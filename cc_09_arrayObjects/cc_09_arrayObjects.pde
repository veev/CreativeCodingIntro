//Define an array of Ball objects
Ball[] myBalls = new Ball[50];

void setup() {
  size(800, 800);
  //Instantiate array of objects
  for(int i = 0; i < myBalls.length; i++) {
   myBalls[i] = new Ball(); 
  }
}

void draw() {
 background(255);
 for(int i = 0; i < myBalls.length; i++) {
   myBalls[i].checkEdges();
   myBalls[i].update();
   myBalls[i].draw(); 
 }
  
}

void mousePressed() {
   for(int i = 0; i < myBalls.length; i++) {
     if(myBalls[i].insideCircle(mouseX, mouseY)) {
       myBalls[i].toggleButton();
     }
 }
}
