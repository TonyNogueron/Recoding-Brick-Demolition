public class Ball {
  PImage ball;
  float x, y, velx, vely;
  int j;



  Ball() {
    ball = loadImage("ball.png");
    x=300;
    y=370;
    j = 0;
    velx = -4;
    vely = -4;
  }

  void displayBall() {
    image(ball, x, y);
  }
  void moveBall() {
    x = x+velx;
    y = y+vely;

    if (x + 30 > width) {
      bouncex();
    } else if (y < 0) {
      bouncey();
    } else if (x < 0) {
      bouncex();
    } else if (y+30 > height) {
      bouncey();
    }

    colisiones();
  }

  void colisiones() {
    if ((x+30) > bar.getbar_x() && (x) < (bar.getbar_x()+100) && (y+30) > bar.getbar_y() && (y) < bar.getbar_y()+26) {
      bouncey();
    }
  }

  void bouncex() {
    velx = velx*(-1);
    pong.play();
    pong.rewind();
  }
  void bouncey() {
    vely = vely*(-1);
    pong.play();
    pong.rewind();
  }

  void setball_x(float xR) {
    x=xR;
  }
  void setball_y(float yR) {
    x=yR;
  }
  void setvel_y(float yR) {
    vely=yR;
  }
  void setvel_x(float xR) {
    velx=xR;
  }

  float getball_x() {
    return x;
  }

  float getball_y() {
    return y;
  }
  float getball_velx() {
    return velx;
  }
  float getball_vely() {
    return vely;
  }
}
