import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
void setup (){
size(700,700);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
void draw(){

background(192);
  int y = arduino.analogRead(5);
  if (y < 70){
  y=60;
  }
  if(y > 200){
  y=200;
  }
System.out.println(y); background(192);
System.out.print(y);
  ellipse(250, 2*y, 50, 50);


//backround
background(135,206,305);
fill(255,255,0);
ellipse(4, 8, 100,100);
line(80,60,60,18);
fill(239,221,111);
rect(0,360, 900,700);

strokeWeight(0);
//puddle
ellipse(350,400,2*y-100,60);
  if (y < 70){
  fill(239,221,111);
  }
  if(y > 125){
  fill(212,241,249);
  }

//cloud
fill(255,255,255);
ellipse(2*y-20,30, 250,100);
//body
fill(255,255,255);
ellipse(350, 300, 150, 150);
ellipse(350, 200, 100, 100);
//head
ellipse(350, 2*y, 75, 75);

fill(0,0,0);
ellipse(365,2*y, 10,10);
ellipse(335,2*y, 10,10);
ellipse(350, 220, 10, 10);
ellipse(350, 200, 10, 10);
ellipse(350, 180, 10, 10);
ellipse(350, 2*y+20, 20,20);

fill(255, 165, 0);
triangle(350,2*y+5,350,2*y,330,2*y+5);


strokeWeight(10);
line(390, 2*y, 405, 220);
line(310, 2*y, 295, 220);

strokeWeight(1);
fill(255, 165, 0);
rect(150,260,30,100);
fill(0,128,0);
ellipse(165,260,100,150);

fill(255, 165, 0);
rect(500,260,30,100);
fill(0,128,0);
ellipse(515,260,100,150);
}
