// example from George Profenza
// adapted by aven (https://www.aven.cc)
// artMahcines & NYU Shanghai

// aiarts, course website: https://wp.nyu.edu/shanghai-ima-aiarts/



import oscP5.*;
import com.runwayml.*;

RunwayOSC runway;
JSONObject data; //store received data

void setup(){
  size(600,400);
  runway = new RunwayOSC(this);
}

void draw(){
  background(0);
  runway.drawPoseNetParts(data,10); // but what is inside this function?
}

void runwayDataEvent(JSONObject runwayData){ //event lisener
  data = runwayData;
}
