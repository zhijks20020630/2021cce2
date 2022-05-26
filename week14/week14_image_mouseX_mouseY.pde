PImage img;
void setup(){
    size(800,800);
    img=loadImage("pik.jpg");
}
void draw(){
   image(img,mouseX,mouseY);
}
