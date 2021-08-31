public class Power {
  PImage power1, power2, power3;
  float x, y, vely;
  int j;



  Power(int ij) {

    power1 = loadImage("power1.png");
    power2 = loadImage("power2.png");
    power3 = loadImage("power3.png");
    x=random(25, 610);
    y=random(-5000, -500);
    j = ij;
    vely = 4;
  }

  void displayPower() {
    switch(j) {
    case 1:
      image(power1, x, y);
      break;
    case 2:
      image(power2, x, y);
      break;
    case 3:
      image(power3, x, y);
      break;
    }
  }

  void movePower() {
    y = y+vely;
    x++;

    if (y > height) {
      y= y - (height + random(100, 1500));
    } else if ( x > width) {
      x= x-(width+random(100));
    }
    colisiones();
  }

  void colisiones() {
    if (score <100) {
      switch(j) {
      case 1:
        if ((x+25) > bar.getbar_x() && (x) < (bar.getbar_x()+100) && (y+25) > bar.getbar_y() && (y) < bar.getbar_y()+26) {
          y= y - (height + random(100, 500));
          if (ball.getball_velx() > 0) {
            ball.setvel_x(ball.getball_velx()+1);
          } else  if (ball.getball_velx() < 0) {
            ball.setvel_x(ball.getball_velx()-1);
          }
        }
        if ((x+25) > bar.getbar_x() && (x) < (bar.getbar_x()+100) && (y+25) > bar.getbar_y() && (y) < bar.getbar_y()+26) {
          y= y - (height + random(100, 500));
          if (ball.getball_vely() > 0) {
            ball.setvel_y(ball.getball_vely()+1);
          } else  if (ball.getball_vely() < 0) {
            ball.setvel_y(ball.getball_vely()-1);
          }
        }
        break;
      case 2:
        if ((x+25) > bar.getbar_x() && (x) < (bar.getbar_x()+100) && (y+25) > bar.getbar_y() && (y) < bar.getbar_y()+26) {
          y= y - (height + random(100, 500));
          bar.setbar_vel(bar.getbar_vel()+1);
        }
        break;
      case 3:
        if ((x+25) > bar.getbar_x() && (x) < (bar.getbar_x()+100) && (y+25) > bar.getbar_y() && (y) < bar.getbar_y()+26) {
          y= y - (height + random(100, 500));
          if (ball.getball_velx() > 2) {
            ball.setvel_x(ball.getball_velx()-1);
          } else if (ball.getball_velx() < -2) {
            ball.setvel_x(ball.getball_velx()+1);
          }
        }
        if ((x+25) > bar.getbar_x() && (x) < (bar.getbar_x()+100) && (y+25) > bar.getbar_y() && (y) < bar.getbar_y()+26) {
          y= y - (height + random(100, 500));
          if (ball.getball_vely() > 2) {
            ball.setvel_y(ball.getball_vely()-1);
          } else if (ball.getball_vely() < -2) {
            ball.setvel_y(ball.getball_vely()+1);
          }
        }
        break;
      }
    }
  }
}
