
//set the size of the application window - default is 100 x 100 pixels
size(800, 800);

//set the color of the background - default is gray
background(255); //sets the background to white

//turn on smoothing so your shapes are anti-aliased - this is now active by default
//smooth();

line(300, 100, 700, 500);
strokeWeight(5);
line(100, 100, 700, 700);
strokeWeight(1);
line(100, 300, 500, 700);

fill(0);
rect(650, 100, 50, 50);

noFill();
strokeWeight(1);
rect(100, 650, 50, 50); //draws at 100, 650 starting at the upper left corner

fill(0);
rect(250, 650, 50, 50, 10); //fifth parameter is radius value for rounded corners
rect(100, 500, 50, 50, 10);

noFill();
rect(500, 100, 50, 50, 10);
rect(650, 250, 50, 50, 10);

fill(0);
triangle(575, 225, 575, 275, 525, 225);
noFill();
triangle(225, 575, 275, 575, 225, 525);

