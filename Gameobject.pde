class Gameobject {

  float x, y, vx, vy, size, hp;
  color myColor;
  
  Gameobject(color c){
    x = random(0, width);
    y= random(0, height);
    vx = vy = 0;
    size = random(20, 100);
    hp = 1;
    myColor = c;
  
  }
  
  Gameobject(float x, float y, float size, float hp, color c){
    this.x = x; //instance variable
    this.y = y;
    this.size = size;
    this.hp = hp;
    this.myColor = c;
    vx = vy = 0;
   
  }
  
  void show(){
    fill(myColor);
    ellipse(x, y, size, size);
   }
   
  void act() {
    x = x + vx;
    y = y + vy;
  }
  
  boolean isDead() {
    if (hp <= 0) {
      return true;
    }
    else {
      return false;
    }
  }
  
  boolean touching(Gameobject obj) {
    if (dist(obj.x, obj.y, x, y) < obj.size/2 + size/2) {
      return true;    
    } else {
      return false;
    }
     
  }
  
  boolean touchingObstacle() {
    int i = 0;
    while (i < objects.size()) {
      Gameobject obj = objects.get(i);
      if (obj instanceof Obstacle && touching(obj)) {
        return true;
      }
      i++;
    }
    return false;
    
  }
  
  
  
}
