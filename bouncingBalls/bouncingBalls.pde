// My first program on processing, to learn how to use classes, loops ans arrays.
// It creates balls (with random speed and colour) and  that bounce on the borders of the screen 

// Position
int x;
int y;

int vx; // x velocity
int vy; // y velocity

int w = 1000; // width
int h = 800;  // height

int ballNumber = 100;
Ball[] balls;



void setup(){
  frameRate(60);
  size(1000,800);
  background(40,40,40);
  
  balls  = new Ball[ballNumber];
  for (int i=0 ; i<ballNumber;i++){
    balls[i] = new Ball();
  }
}


void draw() {
  background(40,40,40);
  for (int i=0 ; i<ballNumber;i++){
    balls[i].advance();
    balls[i].draw();
  }
}
