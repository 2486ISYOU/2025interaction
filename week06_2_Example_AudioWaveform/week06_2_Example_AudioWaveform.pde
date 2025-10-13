//week06_2_Example_Analyze_AudioWaveForm
//它使用了WaveForm物件變數，來分析音樂
import processing.sound.*;

SoundFile sample;//宣告SoundFile的物件變數
Waveform waveform;//宣告Waveform的物件變數

int samples = 100;//一次讀入100個simple

public void setup() {
  size(640, 360);
  //background(255);

  sample = new SoundFile(this, "beat.aiff");//讀入音樂檔
  sample.loop();//循環播放 vs. 之前的 .paly()式只撥放一次

  waveform = new Waveform(this, samples);//享用100格來分析音樂
  waveform.input(sample);//用剛剛的音樂檔進行分析
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();//進行波形的分析
  
  beginShape();
  for(int i = 0; i < samples; i++){//把這100格的座標都算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),//x座標，對應0...100的值，拉出到視窗的長度640
      map(waveform.data[i], -1, 1, 0, height)//y座標就是wavefrom.data[i]的值
    );
  }
  endShape();
}
