void game() {
  background(green);

  int i = 0;
  while(i < objects.size()) {
    Gameobject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
    } else {
    i++;
    }
  }

//spawn code
  if (frameCount % 60 == 0) {//aka modulus
  objects.add(new Enemy());
  }
}

void gameClicks() {
  
}
