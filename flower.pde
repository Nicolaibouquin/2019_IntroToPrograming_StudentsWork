class Flower {
 // Variables
 
 float r=30;            // radius of the flower petal
 int nPetals=8;         // number of petals 
 float x;           // x-position of the center of the flower
 float y;           // y-position of the center of the flower
 int petalColor=#D8FF00;//hexadecimal number for the color of petals
 float moveX=3;         // movement on x
 float moveY=2.3;       // movement on y
 float farveB= color(random(255),random(255),random(255));
 int ballR;
 
// flower
  Flower(float temp_x,float temp_y){
    x=temp_x;
    y=temp_y;
  }
  
//flower ball
  Flower(float temp_x, float temp_y, int temp_r){
  x=temp_x;
  y=temp_y;
  ballR=temp_r;
  }

  void displayflower () {
  
    float ballX;
    float ballY;
  
    fill(petalColor);
    for (float i=0;i<PI*2;i+=2*PI/nPetals) {
    ballX=x + r*cos(i);
    ballY=y + r*sin(i);
    ellipse(ballX,ballY,r,r); 
  }
    fill(200,0,0);
    ellipse(x,y,r*1.2,r*1.2);
  }
  void displayball(){
   fill(farveB);
   ellipse(x, y, r, r);
  }
  
   void move(){
     x=x+moveX;
     y=y+moveY;
  }
  
  void bounce(){
    if(x>width-r){
    moveX=moveX*-1;
    }
    if(x<r){
    moveX=moveX*-1;
    }
    if(y>height-r){
    moveY=moveY*-1;
    }
    if(y<r){
    moveY=moveY*-1;
    }
  } 
  void collide(Flower other){
  float d =dist(x,y, other.x, other.y);
    if(d < r+other.r){
    moveX=moveX*-1;
    moveY=moveY*-1;
    }
  
  }
}
