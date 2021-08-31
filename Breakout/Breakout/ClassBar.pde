public class Bar {

  PImage[] bar = new PImage[9];
  float x, y, vel, j;
  int skin;

  Bar() {
    bar[0] = loadImage("Barra0.png"); 
    bar[1] = loadImage("Barra1.png"); 
    bar[2] = loadImage("Barra2.png");
    bar[3] = loadImage("Barra3.png");
    bar[4] = loadImage("Barra4.png");
    bar[5] = loadImage("Barra5.png");
    bar[6] = loadImage("Barra6.png");
    bar[7] = loadImage("Barra7.png");
    bar[8] = loadImage("Barra8.png");
    x=300;
    y=400;
    j = 0;
    vel = 8;
  }



  void displayBar() {

    switch(skins) {
    case 1:
      skin=0;
      break;
    case 2:
      skin=3;
      break;
    case 3:
      skin=6;
      break;
    }




    if (j>=0 && j<1) {
      image(bar[skin], x, y);
      j = j+0.05;
    } else if (j>=1 && j<2) {
      image(bar[skin+1], x, y);
      j = j+0.05;
    } 
    if (j>=2 && j<3) {
      image(bar[skin+2], x, y);
      j = j+0.05;
    } else if (j>=3) {
      j=0;
    }
  }

  void moveBar() {
    if (moveright == true) {
      x = x+vel;
    } else if (moveleft == true) {
      x = x- vel;
    }
    if (x > width) {
      x = x - (width+100);
    } else if (x < -100) {
      x = x + (width+100);
    }
  }

  void setbar_x(float xR) {
    x=xR;
  }
  void setbar_y(float yR) {
    x=yR;
  }
  void setbar_vel(float vR) {
    vel=vR;
  }

  float getbar_x() {
    return x;
  }
  float getbar_y() {
    return y;
  }
  float getbar_vel() {
    return vel;
  }
}
