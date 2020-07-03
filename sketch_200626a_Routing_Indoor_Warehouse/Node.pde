class Node 
{
  boolean state = false;
  boolean available = false;
  boolean moving = false;
  float pos_x = 0;
  float pos_y = 0;
  float size = 0;
  PVector pos;
  ArrayList<Node> forward_node = new ArrayList<Node>();


  Node(int x, int y, int size_, boolean available_)
  {

    pos = new PVector(x, y);
    pos_x = x;
    pos_y = y;
    available = available_;

    //Node forward_node;
    size = size_;
  }

  void addNode(Node child_node) {

    forward_node.add(child_node);
  }

  void display() {
    fill(0);
    if (available)
      stroke(0, 255, 0);
    else stroke(255, 0, 0);
    strokeWeight(1);
    ellipse(pos_x, pos_y, size, size);

    for (int i = 0; i < forward_node.size(); i++) {
      line(pos_x, pos_y, forward_node.get(i).pos_x, forward_node.get(i).pos_y);
      ellipse(forward_node.get(i).pos_x, forward_node.get(i).pos_y, size, size);
    }
  }
  void check_mouse_area() {
    PVector temp_mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(temp_mouse, pos);
    if (dir.mag() < size)
    {
      //if (sqrt((mouseX - pos_x)*(mouseX - pos_x) - (mouseY - pos_y)*(mouseY - pos_y)) < size){
      available = false;
    } else available = true;
  }
}
