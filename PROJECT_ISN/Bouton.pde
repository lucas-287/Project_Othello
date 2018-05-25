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
    this.x = xp;
    this.y = yp;
    this.size = s;
    this.player = 1;
    this.bg = loadImage("case.png");
    this.noir = loadImage("noir.png");
    this.blanc = loadImage("blanc.png");
  }
 
  public void update() {
    if ((mouseX >= x) && (mouseX <= x + size) &&
      (mouseY >= y) && (mouseY <= y + size)) {
      this.over = true;
    } else {
      this.over = false;
    }
  }
 
  public boolean press() {
    if (over == true) {
      this.pressed = true;
      return true;
    } else {
      return false;
    }
  }
 
  public void release() {
    this.pressed = false; // Set to false when the mouse is released
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
    this.player = joueur;
  }
  
  public int getPlayer(){
    return this.player;
  }
}