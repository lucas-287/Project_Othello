char grid[][] = new char [8][8]; //création tableau/grille de jeu

for(int i=0;i<8;i++)
  {
    for(int j=0;j<8;j++)
    {
    grid[i][j] = 'v';
    println(grid[i][j]);
    }
  }
  
void setup()
  {
  size(1280,720);
  smooth();  
  }

void draw()
  {
  
  }
  
}