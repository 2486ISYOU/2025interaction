//week03_4_pin3_pin5_pin7_digitalWrite_high_low
void setup() {
  pinMode(3,OUTPUT);//do
  pinMode(5,OUTPUT);//mi
  pinMode(7,OUTPUT);//so
  pinMode(8,OUTPUT);//888
}

void loop() {
  digitalWrite(3,HIGH);
  tone(8,523,200);
  delay(1000);
  digitalWrite(3,LOW);//W要大寫

  digitalWrite(5,HIGH);
  tone(8,659,200);
  delay(1000);
  digitalWrite(5,LOW);

  digitalWrite(7,HIGH);
  tone(8,784,200);
  delay(1000);
  digitalWrite(7,LOW);
}
