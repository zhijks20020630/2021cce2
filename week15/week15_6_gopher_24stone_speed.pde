PImage img1,img2,img3,img4,gopher,soil,bg,stone1,stone2;
int [][]stone={  //java陣列
  {1,0,0,1,0,0,0,0},
  {0,1,0,1,0,0,0,0},
  {0,0,1,1,0,0,0,0},
  {0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0},
  {0,0,0,0,0,1,0,0},
  {0,0,0,0,0,0,1,0},
  {0,0,0,0,0,0,0,1},//1-8
  {0,1,1,0,0,1,1,0},
  {1,0,0,1,1,0,0,1},
  {1,0,0,1,1,0,0,1},
  {0,1,1,0,0,1,1,0},
  {0,1,1,0,0,1,1,0},
  {1,0,0,1,1,0,0,1},
  {1,0,0,1,1,0,0,1},
  {0,1,1,0,0,1,1,0},//9-16
  {0,1,2,0,1,2,0,1},
  {1,2,0,1,2,0,1,2},
  {2,0,1,2,0,1,2,0},
  {0,1,2,0,1,2,0,1},
  {1,2,0,1,2,0,1,2},
  {2,0,1,2,0,1,2,0},
  {0,1,2,0,1,2,0,1},
  {1,2,0,1,2,0,1,2},
};
void setup(){  //設定
 size(640,480); 
 img1=loadImage("groundhogIdle.png");
 img2=loadImage("groundhogDown.png");
 img3=loadImage("groundhogLeft.png");
 img4=loadImage("groundhogRight.png");
 soil=loadImage("soil8x24.png");
 bg=loadImage("bg.jpg");
 stone1=loadImage("stone1.png");
 stone2=loadImage("stone2.png");
 gopher=img1;
}
int x=300,y=0,dx=0,dy=0;
void draw(){   //畫圖
  image(bg,0,0);//bk
  int y2=0;
  if(y>(24-6)*80) y2=y-(24-6)*80;
  int speed=3;
  image(soil,0,160-y+y2);//卷軸
  for(int i=0;i<24;i++){
    for(int j=0;j<8;j++){
      if(stone[i][j]==1){image(stone1,80*j,80*i+160-y+y2);
      if(dist(x,y-80, 80*j, 80*i)<40) speed=2;
    }else if(stone[i][j]==2){
      image(stone1,80*j,80*i+160-y+y2);
      image(stone2,80*j,80*i+160-y+y2);  
      if(dist(x,y-80, 80*j, 80*i)<40) speed=1;
    }
   }
  }
  if(y>(24-6)*80) y2=y-(24-6)*80;
  image(gopher,x,80+y2);
  x+=dx*speed; y+=dy*speed;
}
void keyPressed(){
  if(keyCode == DOWN)  {gopher=img2; dx=0 ;dy=1;}
  if(keyCode == LEFT)  {gopher=img3; dx=-1;dy=0;}  
  if(keyCode == RIGHT) {gopher=img4; dx=+1;dy=0;}
}
void keyReleased(){
  gopher=img1;  dx=0;dy=0;
}
