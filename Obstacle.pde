class Obstacle extends Gameobject {

    Obstacle() {
      super(purple);
    }
    
    void act() {
      super.act();
      if (touching(myplayer)) {
        PVector bounce = new PVector(myplayer.x -x, myplayer.y - y);
        bounce.setMag(5);
        myplayer.x = myplayer.x + bounce.x;
        myplayer.y = myplayer.y + bounce.y;
      }
    }
}
