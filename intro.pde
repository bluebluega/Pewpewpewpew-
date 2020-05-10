int t;

void intro() { 
  background(black);
  textSize(200);
  textAlign(CENTER);
  
  fill(255);
  text("PEW", 400, 400);
  
  textSize(30);
  text("(PEWPEWPEW)", 400, 450);
  
  fill(255, 255, 255, t);
  rect(300, 415, 200, 50);
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 415 && mouseY < 465) {
    t = 0;
  } else {
    t = 255;
  }
  
;
  
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 415 && mouseY < 465) {
      mode = GAME;
  } 
}
