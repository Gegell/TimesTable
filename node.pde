class node {
  float x, y;
  int n;
  
  node(float x, float y, int n) {
    this.x = x;
    this.y = y;
    this.n = n;
  }
  
  void update() {
    drawNode();
    drawLine();
  }
  
  void drawLine() {
    stroke(color((multiplicant * 10) % 256, 255, 255));
    line(x, y, timesTable[(ceil(n * multiplicant))%nodeCount].x, timesTable[(ceil(n * multiplicant))%nodeCount].y);
  }
  
  void drawNode() {
    fill(255);
    noStroke();
    ellipse(x, y, 4, 4);
  }
}