float theta;
void setup() {
  background(1, 130, 95);
  size(800, 800);
  //smooth();
  rectMode(CENTER);
}
void draw() {
  background(1, 130, 95);
  float colorpick = random(0,245);
  rectangle( 200, width / 2, height / 2, colorpick); // middle
  circle( 200, width / 2, height / 2, colorpick);

  rectangle( 200, (width / 2) +  200, height / 2, 242); // mid right
  circle( 200, (width / 2) + 200, height / 2, 242);

  rectangle( 200, (width / 2) -  200, height / 2, 242); // mid left
  circle( 200, (width / 2) - 200, height / 2, 242);

  rectangle( 200, (width / 2) -  200, height / 2 - 200, 242); // left top
  circle( 200, (width / 2) - 200, height / 2 - 200, 242);

  rectangle( 200, (width / 2) -  200, height / 2 + 200, 242); // right top
  circle( 200, (width / 2) - 200, height / 2 + 200, 242);

  rectangle( 200, (width / 2), height / 2 + 200, 242); // mid bottom
  circle( 200, (width / 2), height / 2 + 200, 242);

  rectangle( 200, (width / 2), height / 2 - 200, 242); // mid top
  circle( 200, (width / 2), height / 2 - 200, 242);

  rectangle( 200, (width / 2) + 200, height / 2 + 200, 242); // left bottom
  circle( 200, (width / 2) + 200, height / 2 + 200, 242);

  rectangle( 200, (width / 2) + 200, height / 2 - 200, 242); // right bottom
  circle( 200, (width / 2) + 200, height / 2 - 200, 242);
  
  strokeWeight(2);
  smooth();
  System.out.println(mouseX);
  float a = (mouseX / (float) width) * 90;
  theta = radians(a);
}

public void rectangle( float size, int x, int y, float rgb) {
  size *= .9;
  fill(rgb, 0, rgb);
  if (size > 1) {
    translate(0, 0);
    rotate(theta);
    rect(x, y, size, size);
    rectangle( size, x, y, rgb - 10);
  }
}

public void circle( float size, int x, int y, float rgb) {
  size *= .9;
  fill(255, rgb, rgb);
  if (size > 1) {
    translate(0, 0);
    rotate(-theta  );
    ellipse(x, y, size, size);
    circle( size, x, y, rgb - 10);
  }
}
