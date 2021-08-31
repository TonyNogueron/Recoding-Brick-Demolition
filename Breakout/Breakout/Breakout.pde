//Breakout recoded by Antonio Noguerón with some new features 
//Added powerups.


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player, pong, ouch, ameno;

boolean moveleft, moveright, bounce, victoria, derrota;
int score, vidas, screen, skins, colorskin, colorskin1, colorskin2;
Brick amarillo, azul, azulclaro, cafe, gris, morado, naranja, rojo, verde, verdeclaro, amarillo1, azul1, azulclaro1, cafe1, gris1, morado1, naranja1, rojo1, verde1, verdeclaro1;
Brick amarillo2, azul2, azulclaro2, cafe2, gris2, morado2, naranja2, rojo2, verde2, verdeclaro2, amarillo3, azul3, azulclaro3, cafe3, gris3, morado3, naranja3, rojo3, verde3, verdeclaro3;
Brick amarillo4, azul4, azulclaro4, cafe4, gris4, morado4, naranja4, rojo4, verde4, verdeclaro4, amarillo5, azul5, azulclaro5, cafe5, gris5, morado5, naranja5, rojo5, verde5, verdeclaro5;
Bar bar;
Ball ball, ball1;
PImage[] img = new PImage[6];
Power power1, power2, power3;


void setup() {
  background(0);
  size(640, 480);
  score=0;
  vidas=3;
  screen=0;
  victoria=false;

  colorskin = #FFFFFF;
  colorskin1 = #FFFFFF;
  colorskin2 = #FFFFFF;

  bar = new Bar();
  ball = new Ball();
  ball1 = new Ball();
  power1 = new Power(1);
  power2 = new Power(2);
  power3= new Power(3);

  img[0] = loadImage("Barra0.png"); 
  img[1] = loadImage("Barra3.png"); 
  img[2] = loadImage("Barra6.png");
  img[3] = loadImage("ball.png");
  img[4] = loadImage("Barra1.png");
  img[5] = loadImage("brickrojo.png");

  nivel1();
  nivel2();
  nivel3();

  minim = new Minim(this);
  player = minim.loadFile("elevador.mp3", 2048);  
  pong = minim.loadFile("pong.wav", 2048);
  ouch = minim.loadFile("ouch.mp3", 2048);
  ameno = minim.loadFile("ameno.mp3", 2048);
}

void draw() {

  background(0);

  switch(screen) {
  case 0:
    menu();
    break;
  case 1:
    level1();
    break;
  case 2:
    level2();
    break;
  case 3:
    level3();
    break;
  case 4:
    skin();
    break;
  }
  music();
}

void ball() {
  ball.displayBall();
  ball.moveBall();
}

void music() {
  if (screen == 0 || screen == 4) {
    player.play();
  } else {
    player.pause();
    player.rewind();
  }
  if (screen == 1 || screen == 2 || screen == 3) {
    ameno.play();
  } else {
    ameno.pause();
    ameno.rewind();
  }
}

void ball1() {
  ball1.displayBall();
  ball1.moveBall();
}
void bar() {
  bar.displayBar();
  bar.moveBar();
}

void menu() {
  fill(#6AB4E0);
  textSize(100);
  text("Breakout", 25, 100);
  fill(#A2FFF2);
  textSize(30);      
  text("Presiona 'E' para seleccionar tu skin", 20, 180);
  textSize(30);      
  text("Presiona 'A' para ir al nivel 1", 20, 250);
  image(img[3],510,30,60,60);
  image(img[4],200,360,300,78);
}

void keyPressed() {

  if (keyCode == LEFT) {     
    moveleft=true;
  } 
  if (keyCode == RIGHT) {
    moveright=true;
  }
  if (key == 'a' && screen==0) {
    screen++;
  }
  if (key == 'e' && screen==0) {
    screen=4;
  }
}

void keyReleased() { 

  if (keyCode==LEFT) {
    moveleft=false;
  }

  if (keyCode==RIGHT) {
    moveright=false;
  }
}
