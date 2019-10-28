Flower a;
Flower b;
Flower c;
Flower ball;


void setup(){
size(500,500);
a = new Flower(200, 100);
b = new Flower(100, 200);
c = new Flower(300, 200);
ball= new Flower(70, 300, 70);
}

void draw(){
  background(255);
  a.displayflower();
  b.displayflower();
  c.displayflower();
  ball.displayball();
  a.move();
  b.move();
  c.move();
  ball.move();
  a.bounce();
  b.bounce();
  c.bounce();
  ball.bounce();
  a.collide(b);
  a.collide(c);
  a.collide(ball);
  b.collide(a);
  b.collide(c);
  b.collide(ball);
  c.collide(a);
  c.collide(b);
  c.collide(ball);
  
  ball.collide(a);
  ball.collide(b);
  ball.collide(c);
}
