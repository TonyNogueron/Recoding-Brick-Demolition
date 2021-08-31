class Brick {
  float x, y, b, h;
  int col, hit;
  PImage[] brickamarillo = new PImage[2];
  PImage[] brickazul = new PImage[2];
  PImage[] brickazulclaro = new PImage[2];
  PImage[] brickcafe = new PImage[2];
  PImage[] brickgris = new PImage[2];
  PImage[] brickmorado = new PImage[2];
  PImage[] bricknaranja = new PImage[2];
  PImage[] brickrojo = new PImage[2];
  PImage[] brickverde = new PImage[2];
  PImage[] brickverdeclaro = new PImage[2];
  Boolean display;

  Brick(float _x, float _y, int _col) {
    x=_x;
    y=_y;
    b=62;
    h=20;
    col= _col;
    hit = 0;
    display=true;

    brickamarillo[0] = loadImage("brickamarillo.png");
    brickamarillo[1] = loadImage("brickamarilloroto.png");
    brickazul[0] = loadImage("brickazul.png");
    brickazul[1] = loadImage("brickazulroto.png");
    brickazulclaro[0] = loadImage("brickazulclaro.png");
    brickazulclaro[1] = loadImage("brickazulclaroroto.png");
    brickcafe[0] = loadImage("brickcafe.png");
    brickcafe[1] = loadImage("brickcaferoto.png");
    brickgris[0] = loadImage("brickgris.png");
    brickgris[1] = loadImage("brickgrisroto.png");
    brickmorado[0] = loadImage("brickmoradoclaro.png");
    brickmorado[1] = loadImage("brickmoradoclaroroto.png");
    bricknaranja[0] = loadImage("bricknaranja.png");
    bricknaranja[1] = loadImage("bricknaranjaroto.png");
    brickrojo[0] = loadImage("brickrojo.png");
    brickrojo[1] = loadImage("brickrojoroto.png");
    brickverde[0] = loadImage("brickverde.png");
    brickverde[1] = loadImage("brickverderoto.png");
    brickverdeclaro[0] = loadImage("brickverdeclaro.png");
    brickverdeclaro[1] = loadImage("brickverdeclaroroto.png");
  }

  void display() {
    switch (col) {
    case 1: 
      image(brickamarillo[0], x, y);
      break;
    case 2: 
      image(brickamarillo[1], x, y);
      break;
    case 3: 
      image(brickazul[0], x, y);
      break;
    case 4: 
      image(brickazul[1], x, y);
      break;
    case 5: 
      image(brickazulclaro[0], x, y);
      break;
    case 6: 
      image(brickazulclaro[1], x, y);
      break;
    case 7: 
      image(brickcafe[0], x, y);
      break;
    case 8: 
      image(brickcafe[1], x, y);
      break;
    case 9: 
      image(brickgris[0], x, y);
      break;
    case 10: 
      image(brickgris[0], x, y);
      break;
    case 11: 
      image(brickmorado[0], x, y);
      break;
    case 12: 
      image(brickmorado[1], x, y);
      break;
    case 13: 
      image(bricknaranja[0], x, y);
      break;
    case 14: 
      image(bricknaranja[1], x, y);
      break;
    case 15: 
      image(brickrojo[0], x, y);
      break;
    case 16: 
      image(brickrojo[1], x, y);
      break;
    case 17: 
      image(brickverde[0], x, y);
      break;
    case 18: 
      image(brickverde[1], x, y);
      break;
    case 19: 
      image(brickverdeclaro[0], x, y);
      break;
    case 20: 
      image(brickverdeclaro[1], x, y);
      break;
    }


    if ( screen <3) {
      if (ball.getball_x()+30 > x && ball.getball_x() < x+b && ball.getball_y()+30 > y && ball.getball_y() < y+h) {
        ball.bouncey();
        y=y+(height*2);
        score = score +5;
      }
      if (ball1.getball_x()+30 > x && ball1.getball_x() < x+b && ball1.getball_y()+30 > y && ball1.getball_y() < y+h) {
        ball1.bouncey();
        y=y+(height*2);
        score = score +5;
      }
    } else if ( screen == 3) {
      if (ball.getball_x()+30 > x && ball.getball_x() < x+b && ball.getball_y()+30 > y && ball.getball_y() < y+h) {
        if (hit == 0) {
          ball.bouncey();
          col++;
          hit++;
        } else if (hit==1) {
          y=y+(height*2);
          score = score +5;
        }
      }
      if (ball1.getball_x()+30 > x && ball1.getball_x() < x+b && ball1.getball_y()+30 > y && ball1.getball_y() < y+h) {
        if (hit == 0) {
          ball1.bouncey();
          col++;
          hit++;
        } else if (hit==1) {
          y=y+(height*2);
          score = score +5;
        }
      }
    }
  }
  void setbrick_x(float xR) {
    x=xR;
  }
  void setbrick_y(float yR) {
    x=yR;
  }
}
