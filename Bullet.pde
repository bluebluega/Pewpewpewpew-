class Bullet extends Gameobject {
  
  Bullet() {
    super(myplayer.x, myplayer.y, 5, 1, yellow);
    PVector aim = new PVector (mouseX - myplayer.x, mouseY - myplayer.y);
    aim.setMag(10);
    vx = aim.x;
    vy = aim.y;  
  }
  
  void act() {
    super.act();
    if (x < 0 || x > width || y < 0 || y > height){
   hp = 0;
    }
    int i = 0;
    while (i < objects.size()) {
      Gameobject obj = objects.get(i);
      if (obj instanceof Obstacle) {
        if (dist(obj.x, obj.y, x, y) < obj.size/2 + size/2) {
          PVector bounce = new PVector(x- obj.x, y - obj.y);
          bounce.setMag(10);
          vx = bounce.x;
          vy = bounce.y;
        }
      }
      i++;
    }
  }
}
