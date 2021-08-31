void vidas() {
  if (score <100) {
    if ((ball.getball_y()+30) > height-1) {
      vidas--;
      ouch.play();
      ouch.rewind();
      resetball();
    }
    if ((ball1.getball_y()+30) > height-1) {
      vidas--;
      ouch.play();
      ouch.rewind();
      resetball1();
    }
  }

  switch(vidas) {
  case 3: 
    fill(#1FCE2C);
    rect(515, 430, 30, 10);
    rect(548, 430, 30, 10);
    rect(581, 430, 30, 10);
    break;
  case 2:
    fill(#E9ED1D);
    rect(548, 430, 30, 10);
    rect(581, 430, 30, 10);
    break;
  case 1:
    fill(#D1110B);
    rect(581, 430, 30, 10);
    break;
  }
}

void resetball() {
  bar.setbar_x(200);
  bar.setbar_y(400);
  ball.setball_x(300);
  ball.setball_y(300);
  ball.setvel_y(-4);
}

void resetball1() {
  bar.setbar_x(200);
  bar.setbar_y(400);
  ball1.setball_x(300);
  ball1.setball_y(300);
  ball1.setvel_y(-4);
}
