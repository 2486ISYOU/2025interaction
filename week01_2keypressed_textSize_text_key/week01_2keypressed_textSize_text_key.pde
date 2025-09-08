//week01_2keypressed_textSize_text_key
void setup(){
  size(500,500);
}
void draw(){
  if(keyPressed){//記得關掉注音輸入法
    background(#FF0000);
    textSize(80);
    text(""+key,100,100);
  }
}
