int startX = (int)(Math.random()*400+100);
int startY = 0;
int endX = (int)(Math.random()*400+100);
int endY = 0;

int sX = startX;
int sY = 0;
int eX = (int)(Math.random()*400+100);
int eY = 0;


PImage img;

void setup()
{
  size(600,600);
  img = loadImage("liluzi.png");
  strokeWeight(2);
  background(0);
}

void draw()
{
  stroke(252,252,252);
  background(0);
  image(img,140,150,width/2,height/2);
   
  
  while(endY < 500)
  {
   System.out.println(startY);
   endY = startY + (int)(Math.random()*10);
   System.out.println(startX);
   endX = startX + (int)(Math.random()*32)-16;
   line(startX,startY,endX,endY);
   startX = endX;
   startY = endY;
   
   System.out.println(sY);
   eY = sY + (int)(Math.random()*10);
   System.out.println(sX);
   eX = sX + (int)(Math.random()*32)-16;
   line(sX,sY,eX,eY);
   sX = eX;
   sY = eY;
  }

  
  
}

void mousePressed()
{
  background(211,12,186);
  image(img,140,150,width/2,height/2);
  if (width/6 < 600 && height/6 <600)
  {
    height = height/6 *6;
  }
  
  else
  {
    height = height/6;
  }
  
  startX = (int)(Math.random()*600);
  startY = 0;
  endX = (int)(Math.random()*600);
  endY = 0;
  
  sX = startX;
  sY = 0;
  eX = (int)(Math.random()*600);
  eY = 0;

}


