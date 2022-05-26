PShape gundam;
void setup(){
   size(500,500,P3D);
   gundam=loadShape("Gundam.obj");
}
void draw(){
  background(128);
  
  translate(250,500);//往右移一半
  scale(20,-20,20);//放大20倍,看到左半邊
  rotateY( radians(frameCount));//放在下面
  shape(gundam);
  
}
