PImage img1,img2,img3,img4,gopher;
void setup(){  //設定
 size(640,480); 
 img1=loadImage("groundhogIdle.png");
 img2=loadImage("groundhogDown.png");
 img3=loadImage("groundhogLeft.png");
 img4=loadImage("groundhogRight.png");
 gopher=img1;
}
void draw(){   //畫圖
  background(255);
  image(gopher,0,0);
}
void keyPressed(){
  if(keyCode == DOWN) gopher=img2;
  if(keyCode == LEFT) gopher=img3;  
  if(keyCode == RIGHT) gopher=img4;
}
