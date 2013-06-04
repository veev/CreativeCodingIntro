float bgColor;
float leftRectColor;
float rightRectColor;
float angle = 0;

void setup() {
 size(800, 800);
 colorMode(HSB, 1.0, 1.0, 1.0); //the HSB color space is in the range of 0 to 1
}

void draw() {
 bgColor = (abs(sin(angle))); //sin() of the angle gives a value between -1 and 1. abs() changes the negative values to positive
 background(bgColor, 1, 1); 
 
 leftRectColor = map(mouseX, 0, width, 0, 1); //this is a good function to know. Maps one range of values onto another
 rightRectColor = map(mouseY, 0, height, 0, 1);
  
 noStroke(); //disables default black stroke
 rectMode(CENTER); //draws rectangle origin in the center, not the left upper corner
 fill(leftRectColor, 1,1);
 rect(width/4, height/2, 300, 600);
 fill(rightRectColor, 1, 1);
 rect(3*width/4, height/2, 300, 600);
 
 angle += 0.001;
 println(bgColor);
}
