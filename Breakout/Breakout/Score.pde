void score() {
  if (score == 100 && screen <3) {
    textSize(100);
    text("¡Victoria!", 100, 200 );
    textSize(20);      
    text("Presiona ENTER para ir al siguiente nivel", 120, 300);
    victoria=true;
  } else if ( score == 100 && screen == 3) {
    textSize(100);
    text("¡Victoria!", 100, 200 );
    textSize(20);      
    text("Juego Creado por: Antonio Noguerón", 100, 300);
  }
  if (vidas <1) {
    textSize(100);
    text("Perdiste", 100, 200 );
    textSize(20);      
    text("Inicia el juego nuevamente y gana", 50, 300);
    victoria=true;
  }

  if (key == ENTER && victoria == true) {
    if (screen==1) {
      screen++;
      score=0;
      resetball();
      victoria=false;
    } else if (screen==2) {
      screen++;
      score=0;
      resetball();
      resetball1();
      victoria=false;
    }
  }


  textSize(20);
  text("SCORE:"+score, 20, 450);
}
