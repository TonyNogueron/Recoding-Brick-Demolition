void skin() {
  fill(#C5A2FF);
  textSize(100);
  text("SKINS", 170, 100);
  image(img[0], 10, 200, 200, 52);
  image(img[1], 220, 300, 200, 52);
  image(img[2], 430, 200, 200, 52);
  textSize(30);      
  text("Presiona la tecla para seleccionar tu skin", 25, 140);
  textSize(20);      
  text("Presiona R para volver al menú", 330, 460);
  fill(colorskin);
  textSize(50);      
  text("F", 90, 310);
  fill(colorskin1);
  text("G", 300, 410);
  fill(colorskin2);
  text("H", 510, 310);

  if (key == 'f' && screen==4) {
    colorskin = #0E6A0A;
    skins=1;
  } else { 
    colorskin = #FFFFFF;
  }
  if (key == 'g' && screen ==4) {
    colorskin1 = #0E6A0A;
    skins=2;
  } else {
    colorskin1 = #FFFFFF;
  }
  if (key == 'h' && screen==4) {
    colorskin2 = #0E6A0A;
    skins=3;
  } else { 
    colorskin2 = #FFFFFF;
  }
  if (key == 'r' && screen==4) {
    screen=0;
  }
}
