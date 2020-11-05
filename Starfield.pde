Particle[] star = new Particle[1000];
void setup()
{
  size(400, 400);
  for(int i = 0; i < star.length; i++)
  {
    star[i] = new Particle();
  }
  star[0] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < star.length; i++)
  {
    star[i].show();
    star[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = myY = 200;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 3, 3);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  int mySize;
  OddballParticle()
  {
    myX = myY = 200;
    mySpeed = 1;
    myAngle = Math.random()*2*Math.PI;
    myColor = color(234, 230, 159);
    mySize = 50;
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor); 
    ellipse((float)myX, (float)myY, mySize, mySize);
    mySize++;
  }
}
