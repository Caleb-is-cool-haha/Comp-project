import ddf.minim.*;

Minim minim;

AudioPlayer player;

PImage vinyl;

int x;
int y;
int r;

int count = 0;

void setup() {
  size(800, 600);
  x = 400;
  y = 300;
  r =0;
  vinyl = loadImage("psychocandy-vinyl.png");
  translate(x,y);
  imageMode(CENTER);
  image(vinyl, -0, -0, 400, 400);
  minim = new Minim(this);
  player = minim.loadFile("Honey.mp3"); 
}

void draw() {
  loop();
  background(255);
  translate(x, y);
  rotate(radians(r));
  r += 1;
  imageMode(CENTER);
  image(vinyl, -0, -0, 400, 400);
}
void keyPressed(){
  if(count%2 == 1){
    loop();
    background(255);
    translate(0, 0);
    rotate(radians(r));
    r += 1;
    imageMode(CENTER);
    image(vinyl, -0, -0, 400, 400);
    println("r: "+r);
    player.play();
  }
  else if(count%2 <= 1){
    int(count%2 == 0); 
      if(count%2 <= 1){
        noLoop();
        player.pause();
      }
    }
    count++;
  }
