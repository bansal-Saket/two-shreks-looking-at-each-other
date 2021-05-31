import queasycam.*;
QueasyCam cam;

PShape shrek;
PShape tree;
PShape fshrek;

float mangle = 0;
float fangle = 0;

void setup() {

  size(800,800,P3D);
  cam = new QueasyCam(this);
  
  shrek = loadShape("Shrek/tinker.obj");
  tree = loadShape("tree/tinker.obj");
  fshrek = loadShape("fshrek/tinker.obj");
  
}


void draw() {

  background(0);
  
  pushMatrix();
  translate(50,0,0);
  shape(shrek);
  rotateX(degrees(mangle));
  rotateY(0);
  popMatrix();
  
  pushMatrix();
  translate(50,100,0);
  shape(fshrek);
  rotateX(degrees(fangle));
  rotateY(0);
  popMatrix();
  
  pushMatrix();
  translate(0,50,0);
  shape(tree);
  rotateX(((3*(PI))/2));
  rotateY(0);
  popMatrix();
  
  pushMatrix();
  translate(100,50,0);
  shape(tree);
  rotateX(((3*(PI))/2));
  rotateY(0);
  popMatrix();
  
  mangle = mangle + 1;
  fangle = fangle + 1;
}
