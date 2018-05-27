import controlP5.*;
ControlP5 cp5;
PImage bgcase, noir, blanc;
Bouton[][] grid;
int player;

void setup(){
  size(512,512);
  smooth();
  
  cp5 = new ControlP5(this);
  grid = new Bouton [8][8]; //création tableau/grille de jeu
  bgcase = loadImage("case.png");
  blanc = loadImage("blanc.png");
  noir = loadImage("noir.png");

  for(int i=0;i<8;i++){
    
    for(int j=0;j<8;j++){
        
      grid[i][j] = new Bouton(i*64, j*64, 64);
      if( (i==3 && j == 3) || (i == 4 && j == 4)){
        grid[i][j].poserJeton(blanc,i,j);
      }
      
    }
    
  }
  grid[3][3].bg = blanc;
  grid[4][4].bg = blanc;
  grid[3][4].bg = noir;
  grid[4][3].bg = noir;
}
void draw(){
  
  for (int x = 0; x < 8 ; x++){
    for (int y = 0; y < 8 ; y++){
      
      grid[x][y].update();
      grid[x][y].display();
      
    }
  }
}

void mousePressed(){
  for (int x = 0; x < 8 ; x++){
    for (int y = 0; y < 8 ; y++){
      grid[x][y].press();
      grid[x][y].changementJoueur();
    }
  }
}

void mouseReleased(){
  boolean saidOnce = false;
  for (int x = 0; x < 8 ; x++){
    for (int y = 0; y < 8 ; y++){
      grid[x][y].release();
      player = grid[x][y].getPlayer();
      if(saidOnce == false){
        println(player);
        saidOnce = true;
      }
    }
  }
  saidOnce = false;
}
