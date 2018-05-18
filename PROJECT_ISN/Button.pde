class Button {
  int x, y; // The x- and y-coordinates
  int size; // Dimension (width and height)
  color baseGray; // Default gray value
  color overGray; // Value when mouse is over the button
  color pressGray; // Value when mouse is over and pressed
  boolean over = false; // True when the mouse is over
  boolean pressed = false; // True when the mouse is over and pressed
  PImage bg; //case vide
 
  Button(int xp, int yp, int s, PImage bag) {
    x = xp;
    y = yp;
    size = s;
    bg = bag;
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
      image(bg, x, y);
    }
    stroke(255);
    rect(x, y, size, size);
  }
}