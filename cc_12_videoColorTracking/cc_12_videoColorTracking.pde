/**
 * Color Tracking, based on
 * Brightness Tracking 
 * by Golan Levin. 
 *
 * Tracks the reddest pixel in a live video signal. 
 */

//Import the native video capture library
import processing.video.*;

//Create the video capture object (this defaults to your laptop camera)
Capture video;

color trackColor;

void setup() {
  size(640, 480, P2D);
  // Uses the default video input, see the reference if this causes an error
  video = new Capture(this, width, height);
  video.start(); 
  //track for red
  trackColor = color(255, 0, 0); 
  noStroke();
}

void draw() {
  if (video.available()) {
    //read the next frame of video
    video.read();
    // Draw the webcam video onto the screen
    image(video, 0, 0, width, height); 
    // X-coordinate of the reddest video pixel
    int reddestX = 0; 
     // Y-coordinate of the reddest video pixel
    int reddestY = 0;
     // Value of the reddest video pixel, start off with a high number
    float reddestValue = 500;
    // Search for the reddest pixel: For each row of pixels in the video image and
    // for each pixel in the yth row, compute each pixel's index in the video
    video.loadPixels();
    for (int y = 0; y < video.height; y++) {
      for (int x = 0; x < video.width; x++) {
        //get the pixel location in the 1D array
        int loc = x + y*video.width;
        // Get the color stored in the pixel
        color pixelValue = video.pixels[loc];
        // Determine the redness of the current pixel by accessing the red channel
        float r1 = red(pixelValue);
        float g1 = green(pixelValue);
        float b1 = blue(pixelValue);
        
        float r2 = red(trackColor);
        float g2 = green(trackColor);
        float b2 = blue(trackColor);
        
        //Use euclidean distance to compare the two color values
        float d = dist(r1, g1, b1, r2, g2, b2);
        // If that value is redder than any previous, then store the
        // value of that pixel, as well as its (x,y) location
        if (d < reddestValue) {
          reddestValue = d;
          reddestY = y;
          reddestX = x;
          println(reddestX + "," + reddestY);
        }
      }
    }
    // Draw a large, red circle at the brightest pixel
    fill(255, 0, 0, 128);
    ellipse(reddestX, reddestY, 200, 200);
  }
}
