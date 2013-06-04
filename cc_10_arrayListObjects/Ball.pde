//Ball Class

class Ball {

  //Declare Variables
  float x;
  float y;
  float speed;
  float easing;
  boolean buttonClicked;
  float radius; //actually more like diameter
  color ballColor;

  //Constructor
  //This constructor instantiates a ball object at the coordinates you pass it
  Ball(float mX, float mY) {
    x = mX;
    y = mY;
    speed = random(-2, 2);
    easing = 1.1;
    buttonClicked = false;
    radius = random(20, 60);
    ballColor = color(255, 0, 0);
  }

  //Class functions
  void update() {

    x += speed * easing;
    y += speed * easing;

  }
  
  void checkEdges() {
   if(x > width - (radius/2)) {
     x = width - radius/2;
     speed *= -1; //change the direction
   } 
   
   if(x < 0 + (radius/2)) {
     x = radius/2;
     speed *= -1; //change the direction
   }
   
   if(y > height - (radius/2)) {
     y = height - radius/2;
     speed *= -1; 
   }
   
   if( y < 0 + (radius/2)) {
     y = radius/2;
     speed *= -1;
   }
  }

  void draw() {
    fill(ballColor); 
    ellipse(x, y, radius, radius);
  }
  
}

