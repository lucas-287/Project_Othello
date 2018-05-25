public class Bouton {
 private int x, y; // The x- and y-coordinates
 private int size; // Dimension (width and height)
 private boolean over = false; // True when the mouse is over
 private boolean pressed = false; // True when the mouse is over and pressed
 private PImage bg; 
 private PImage noir;
 private PImage blanc;
 private int player;
  
 
  public Bouton(int xp, int yp, int s) {
    x = xp;
    y = yp;
    size = s;
    player = 1;
    bg = loadImage("case.png");
    noir = loadImage("noir.png");
    blanc = loadImage("blanc.png");
  }
 
  public void update() {
    if ((mouseX >= x) && (mouseX <= x + size) &&
      (mouseY >= y) && (mouseY <= y + size)) {
      over = true;
    } else {
      over = false;
    }
  }
 
  public boolean press() {
    if (over == true) {
      pressed = true;
      return true;
    } else {
      return false;
    }
  }
 
  public void release() {
    pressed = false; // Set to false when the mouse is released
  }
 
  public void display() {
    if (pressed == true) {
      image(noir, x, y);
    } else if (over == true) {
      image(blanc, x, y);
    } else {
      image(bg, x, y);
    }
  }
  
  public void setPlayer(int joueur){
    if(joueur == 1 || joueur == 2)
    player = joueur;
  }
  
  public int getPlayer(){
    return player;
  }
}