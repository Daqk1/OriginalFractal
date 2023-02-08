int x = 0;
public void setup()
{
  size(1000,1000);
  background(255);
  rectMode(CENTER);
}
public void draw()
{
  f(500,500,500);
  f(500,500,1000);
  s(500,500,200);
}
public void f(int x, int y, int size) 
{
      ellipse(x-250,y-250,size,size);
      ellipse(x+250,y-250,size,size);
      ellipse(x+250,y+250,size,size);
      ellipse(x-250,y+250,size,size);

  if(size > 10){
    f(x+size/4,y, size/2);
    f(x-size/4,y, size/2);
    f(x,y+size/4, size/2);
    f(x,y-size/4, size/2);
  }
}

public void s(int x, int y, int size){
  rect(x,y-250,size,size);
  rect(x,y+250,size,size);
 // rect(x-500,y-250,size,size);
 // rect(x+500,y+250,size,size);
 // rect(x-500,y+250,size,size);
 // rect(x+500,y-250,size,size);


  if(size > 10){
    s(x+size/2, y , size/2);
    s(x-size/2, y , size/2);
    s(x, y +size/2, size/2);
    s(x, y -size/2, size/2);

  }
}
