Flower b;


void setup(){
size(500,500);
b = new Flower();

}

void draw(){
  background(255);
  b.display();
  b.move();
  b.bounce();
}
