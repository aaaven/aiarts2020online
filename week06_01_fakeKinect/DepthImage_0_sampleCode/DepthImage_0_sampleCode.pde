// example from George Profenza
// adapted by by Aven Le ZHOU (https://www.aven.cc)
// artMahcines & NYU Shanghai
// aiarts https://github.com/artmachines/aiarts2020online

import processing.video.*;
// reference to the camera
Capture camera;

void setup() {
  size(1200, 400);
  setup_fakeKinect();
}

void draw() {
  background(0);
  update_fakeKinect();
  // draw image received from Runway
  if (depthImage != null) {
    image(depthImage, 600, 0);
  }
  // draw camera feed
  image(camera, 0, 0, 600, 400);
  // display status
  text(status, 5, 15);
}
