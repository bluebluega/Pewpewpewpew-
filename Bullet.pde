class Bullet extends Gameobject {
  
  Bullet(float x, float y, float size, float hp, color c) {
    super(x, y, size, 1, c);
    if (c == yellow) {
    PVector aim = new PVector (mouseX - myplayer.x, mouseY - myplayer.y);
    aim.setMag(10);
    vx = aim.x;
    vy = aim.y;  
  }
    if (c == pink) {
      PVector aim = new PVector (myplayer.x - x, myplayer.y - y);
      aim.setMag(10);
      vx = aim.x;
      vy = aim.y;  
    }
  }
  
  void act() {
    super.act();
    if (x < 0 || x > width || y < 0 || y > height){
   hp = 0;
    }
    int i = 0;
    while (i < objects.size()) {
      Gameobject obj = objects.get(i);
      if (obj instanceof Obstacle && touching(obj)) {
          PVector bounce = new PVector(x- obj.x, y - obj.y);
          bounce.setMag(10);
          vx = bounce.x;
          vy = bounce.y;
      }
      if (obj instanceof Enemy && touching(obj) && myColor == yellow){
          obj.hp--;
      }
      i++;
    }
  }
}
