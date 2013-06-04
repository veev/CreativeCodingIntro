//Ball Class

class Ball {

  //Declare Variables
  float x;
  float y;
  float speed;
  boolean buttonClicked;
  float radius; //actually more like diameter
  color ballColor;

  //Constructor
  Ball() {
    x = random(0, width);
    y = random(0, height);
    speed = random(1, 2);
    buttonClicked = false;
    radius = random(20, 60);
    ballColor = color(0, 0, 0);
  }

  //Class functions
  void update() {

    x += speed;
    y += speed;

    if (buttonClicked) {
      ballColor = color(255, 0, 0);
    } else {
      ballColor = color(0, 0, 0);
    }
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

  void toggleButton() {
    buttonClicked = !buttonClicked;
  }


  boolean insideCircle(float mX, float mY) {
    float distance = dist(x, y, mX, mY);
    if (distance < radius) {
      return true;
    }
    else {
      return false;
    }
  }
  
}

