class Ball {
  float x;
  float y;
  float vx;
  float vy;
  int red;
  int green;
  int blue;
  int radius;
  
  Ball(){ 
    x = (float)random(950)+25.0;
    y = (float)random(750)+25.0;
    vx = ((float)random(2.5)* ((int)random(2) * 2 - 1 )+4) * ((int)random(2) * 2 - 1 );
    vy = ((float)random(2.5)* ((int)random(2) * 2 - 1 )+4) * ((int)random(2) * 2 - 1 );
    red = (int)random(255);
    green = (int)random(255);
    blue = (int)random(255);
    radius = 15;
  }
  
  void advance(){
    if (x+vx+radius>w || x+vx-radius<0){
      vx *= -1;
    }
    if (y+vy+radius>h || y+vy-radius<0){
      vy *= -1;
    }
    x += vx;
    y +=vy; 
  }
  
  void draw(){
    noStroke();
    fill(red,green,blue);
    ellipse(x,y,2*radius,2*radius);
  }
}
