//Adapted from Shiffman's ArrayList example

//Define an ArrayList of Ball objects
ArrayList<Ball> myBalls;

void setup() {
  size(800, 800);
  //Create empty ArrayList which will store Ball objects
  myBalls = new ArrayList<Ball>();
  
  //Add one object to the ArrayList to start off
  myBalls.add(new Ball(random(0, width), random(0, height)));
}

void draw() {
 background(255);
 
 //Iterate through the ArrayList to move and draw ball objects
 for(int i = 0; i < myBalls.size(); i++) {
    //ArrayList doesn't know what it's storing, so cast objects coming out
    Ball b = myBalls.get(i);
    b.update();
    b.checkEdges();
    b.draw(); 
 } 
}

void mousePressed() {
  //Add a new ball object to the ArrayList every time mouse is pressed
  myBalls.add(new Ball(mouseX, mouseY));
}
