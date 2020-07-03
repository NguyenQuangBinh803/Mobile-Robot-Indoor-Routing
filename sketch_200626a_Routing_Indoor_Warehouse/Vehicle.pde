class Vehicle {
  int x = 0;
  int y = 0;
  PVector position = new PVector();
  
  Vehicle(int x_, int y_) {
    x = x_;
    y = y_;
    position = new PVector(x,y);  
  }
  
  void move_to(int pos_x, int pos_y){
    PVector destination = new PVector(pos_x, pos_y);
    PVector direction = PVector.sub(destination, position);
    position.add(direction.setMag(direction.mag()/10));
  }
  void display(){
    strokeWeight(2);
    stroke(255,0,0);
    point(position.x, position.y);
  }

}
