import controlP5.*;
ControlP5 cp5;
PImage bg;
PImage bgcase;
Button[][] grid;

void setup(){
  size(512,512);
  smooth();
  
  cp5 = new ControlP5(this);
  grid = new Button [8][8]; //création tableau/grille de jeu
  bg = loadImage("plato.png");

  for(int i=0;i<8;i++){
    
    for(int j=0;j<8;j++){
        
      grid[i][j] = new Button(i*64,j*64,64, loadImage("case.png"));
      
    }
  }
}
void draw(){
  background(bg);
  
  for (int x = 0; x < 8 ; x++){
    for (int y = 0; y < 8 ; y++){
      grid[x][y].update();
      grid[x][y].display();
    }
  }
}