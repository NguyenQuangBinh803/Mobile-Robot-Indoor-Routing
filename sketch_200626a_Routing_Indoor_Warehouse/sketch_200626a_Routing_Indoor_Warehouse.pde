
Node list_of_nodes[] = new Node[100];


void setup() {
  size(800, 800);
  int size = 10;
  for (int i=0; i< 10; i++)
  {
    int x = int(random(800));
    int y = int(random(800));
    
    
    list_of_nodes[i] = new Node(x, y, size, true);
  }
  
  for (int i=0; i<10; i++)
  {
    int x = int(random(800));
    int y = int(random(800));
    
    Node temp = new Node(x,y,size, true);
    list_of_nodes[i].addNode(temp);
    
    x = int(random(800));
    y = int(random(800));
    
    temp = new Node(x,y,size, true);
    list_of_nodes[i].addNode(temp);
  }
  
  ellipseMode(CENTER);
  
}
void check_mouse_area() {
    
}
void draw() {
  background(0);
  for (int i=0; i< 10; i++) {
    list_of_nodes[i].display();
    list_of_nodes[i].check_mouse_area();
  }
}
