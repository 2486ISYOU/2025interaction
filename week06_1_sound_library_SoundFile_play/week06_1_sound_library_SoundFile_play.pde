//week06_1_sound_library_SoundFile_play
//File-PreFerence 字型改大
//Sketch-Library-ManageLibrary>>sound 安裝
//File-Examples-Library核心函式庫-sound
//這個範例有聲音，有函式可參考
import processing.sound.*;//使用聲音的外掛模組
SoundFile sound;//宣告SoundFile物件變數
void setup(){
  size(500,400);//視窗大小
  sound=new SoundFile(this,"beat.mp3");
  //老師把music.mp3傳給我，把它拉到程式中
  sound.play();
}
void draw(){
  
}
