public void setup()
{
  size(400,400);
  background(0);
  ellipseMode(CENTER);
  stroke(10);
  noStroke();
  translate(200,200);
  myFractal(0);
}

int count = 0;
public void myFractal(int siz)
{
   fill(#e7d1ff,50);
  if(siz >= 400){
    fill(255,0,0,80);
    ellipse(0,0,100,100);
  }
  if(count == 0 && siz < 400){
  rotate(radians(30));
  ellipse(0,0,150,400-siz);
  rotate(radians(60));
  ellipse(0,0,150,400-siz);
  rotate(radians(60));
  ellipse(0,0,150,400-siz);
  rotate(radians(60));
  ellipse(0,0,150,400-siz);
  count++;
  } else if(count == 1 && siz < 400) {
  rotate(radians(30));
  ellipse(0,0,150,400-siz);
  rotate(radians(60));
  ellipse(0,0,150,400-siz);
  rotate(radians(60));
  ellipse(0,0,150,400-siz);
  rotate(radians(60));
  ellipse(0,0,150,400-siz);
  count--;
  }
  if(siz < 400) {
    myFractal(siz+20);
  }
}
