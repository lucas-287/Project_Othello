int unit = 64;
int count;
int num;
int butVal;
Button[][] space;
 
 
void setup() {
  size(512, 512);
  int wide = width/unit;
  count = wide;
  space = new Button[count][count];
 
  
  for (int x = 0; x < 8 ; x++){
    for (int y = 0; y < 8 ; y++){
      space[x][y] = new Button(x*unit,y*unit, 64, color(255, 0, 0), color(0, 255, 0), color(0, 0, 255));
    }
  }

}
 
void draw() {
  background(255,255,255);
  for (int x = 0; x < 8 ; x++){
    for (int y = 0; y < 8 ; y++){
      space[x][y].update();
      space[x][y].display();
    }
  }
}
 

 
 
 
//_____________________________//
 
class Button {
  int x, y; // The x- and y-coordinates
  int size; // Dimension (width and height)
  color baseGray; // Default gray value
  color overGray; // Value when mouse is over the button
  color pressGray; // Value when mouse is over and pressed
  boolean over = false; // True when the mouse is over
  boolean pressed = false; // True when the mouse is over and pressed
 
  Button(int xp, int yp, int s, color b, color o, color p) {
    x = xp;
    y = yp;
    size = s;
    baseGray = b;
    overGray = o;
    pressGray = p;
  }
 
  // Updates the over field every frame
  void update() {
    if ((mouseX >= x) && (mouseX <= x + size) &&
      (mouseY >= y) && (mouseY <= y + size)) {
      over = true;
    } else {
      over = false;
    }
  }
 
  boolean press() {
    if (over == true) {
      pressed = true;
      return true;
    } else {
      return false;
    }
  }
 
  void release() {
    pressed = false; // Set to false when the mouse is released
  }
 
  void display() {
    if (pressed == true) {
      fill(pressGray);
    } else if (over == true) {
      fill(overGray);
    } else {
      fill(baseGray);
    }
    stroke(255);
    rect(x, y, size, size);
  }
}