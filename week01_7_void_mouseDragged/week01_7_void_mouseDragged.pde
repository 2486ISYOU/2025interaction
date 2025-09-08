//week01_7_void_mouseDragged
//動很快也不會漏掉永遠都準確
void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
}
void mouseDragged(){//好像沒有比較準，下課
  if(mousePressed&&x<mouseX&&mouseX<x+100&&y<mouseY&&mouseY<y+50){
    x+=mouseX-pmouseX;
    y+=mouseY-pmouseY;
  }
}
