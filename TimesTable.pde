int nodeCount = 200;
float multiplicant = 0;
float offset = 0.005;
float radius;
boolean backwards; 
boolean showInfo = true;
node[] timesTable = new node[nodeCount];

void setup() {
  colorMode(HSB, 255);
  //size(800, 800);
  fullScreen();
  radius = (min(width, height) - 40)/2;
  float angle = TWO_PI / float(nodeCount);
  for (int i = 0; i < nodeCount; i++) {
    timesTable[i] = new node(radius*sin(angle*i),radius*cos(angle*i), i);
  }
  frameRate(40);
  textAlign(CENTER, TOP);
  println(radius);
  textFont(createFont("Impact", 16));
}

void draw() {
  translate(width/2, height/2);
  background(0);
  for (int i = 0; i < timesTable.length; i++) {
    timesTable[i].update();
  }
  multiplicant += offset;
  multiplicant = max(multiplicant, 0);
  //multiplicant = min(multiplicant, nodeCount);
  surface.setTitle("Times Table - " + nodeCount + " Nodes mult. by " + multiplicant + " with a change of " + offset);
  if (showInfo) text(multiplicant, 0, radius);
}

void keyPressed() {
  showInfo = !showInfo;
}

/*
void mouseMoved() {
  offset = map(mouseY, 0, height, 0, 0.25);
  if (backwards) {
    offset = -offset;
  }
}

void mouseClicked() {
  backwards = !backwards;
  mouseMoved();
}
*/