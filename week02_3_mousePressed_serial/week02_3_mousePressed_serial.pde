//week02_3_mousePressed_serial
import processing.serial.*;//第一行使用usb的serial
Serial myPort;
void mousePressed(){
  myPort.write(' ');//第四行，MOUSE按下時，就送' '出去
}

void setup(){
  size(400,400);
  myPort=new Serial(this,"COM4",9600);//第三行，準備好
}//剛剛在ARDUINO COM是多少就多少
void draw(){
  if(mousePressed)background(#FF0000);
  else background(#00FF00);
}
