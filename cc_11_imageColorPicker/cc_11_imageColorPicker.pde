PImage img;
color pixelValue;

void setup() {
  img = loadImage("http://scienceblogs.com/gregladen/wp-content/blogs.dir/472/files/2012/04/i-14d88e896707b2a9099eda560f3027fd-ssc2009-14a_SmNASA.jpg");
  size(img.width*2, img.height); 
}

void draw() {
  image(img, 0, 0, img.width, img.height);
  
  img.loadPixels();
  for(int y = 0; y < height; y++) {
   for(int x = 0; x < width/2; x++) {
    int loc = mouseX + mouseY*width/2;
    pixelValue = img.pixels[loc];
   } 
  }
  
  noStroke();
  fill(pixelValue);
  rect(width/2, 0, width/2, height);
}
