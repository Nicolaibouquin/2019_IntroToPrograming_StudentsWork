class Flower {
 // Variables
 
 float r=30;            // radius of the flower petal
 int nPetals=8;         // number of petals 
 float x=200;           // x-position of the center of the flower
 float y=200;           // y-position of the center of the flower
 int petalColor=#D8FF00;//hexadecimal number for the color of petals
 float moveX=3;         // movement on x
 float moveY=2.3;       // movement on y
 
  Flower(){
  }

  void display () {
  
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
   void move(){
     x=x+moveX;
     y=y+moveY;
  }
  
  void bounce(){
    if(x>width){
    moveX=moveX*-1;
    }
    if(x<0){
    moveX=moveX*-1;
    }
    if(y>height){
    moveY=moveY*-1;
    }
    if(y<0){
    moveY=moveY*-1;
    }
  } 
}
