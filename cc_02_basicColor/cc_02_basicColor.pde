// Color comes in a variety of formats, HEX, HSB, RGB and Grayscale
//background(0); //sets the background to black (grayscale)
//background(0, 100); //sets the background to black with opacity of 100
//background(255, 0, 0); //sets the background to red (RGB)
//background(255, 0, 0, 100); //sets the background to red with opacity of 100

//background(#FF0000); //sets the background to red in HEX

colorMode(HSB, 360, 100, 100); //the other parameters set the maximum values, in this way so that it corresponds to color picker values
//background(0, 100, 100); //sets the background to red in HSB
background(0, 50, 100); //sets the background to red, saturation at 50% and full brightness 


//set the size of the application window - default is 100 x 100 pixels
size(800, 800);

line(300, 100, 700, 500);
strokeWeight(5);
line(100, 100, 700, 700);
strokeWeight(1);
line(100, 300, 500, 700);

fill(0);
rect(650, 100, 50, 50);

fill(360);
strokeWeight(1);
rect(100, 650, 50, 50); //draws at 100, 650 starting at the upper left corner

fill(0);
rect(250, 650, 50, 50, 10); //fifth parameter is radius value for rounded corners
rect(100, 500, 50, 50, 10);

fill(360);
rect(500, 100, 50, 50, 10);
rect(650, 250, 50, 50, 10);

fill(0);
triangle(575, 225, 575, 275, 525, 225);
fill(360);
triangle(225, 575, 275, 575, 225, 525);

