void setup(){
  size(400,300);
}
int x=100,y=150,x2=300,y2=150;
void draw(){
  background(#FFFFF2);
  ellipse(x,y,30,30);
  ellipse(x2,y2,30,30);
}
void keyPressed(){///同時按只有一個有反應
   if(key=='a') x-=2;
   if(key=='d') x+=2;
   if(key=='w') y-=2;
   if(key=='s') y+=2;
   if(keyCode==LEFT)  x2-=2;
   if(keyCode==RIGHT) x2+=2;
   if(keyCode==UP)    y2-=2;
   if(keyCode==DOWN)  y2+=2;
}
