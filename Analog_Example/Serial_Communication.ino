char val;
int felt = 0;
int value = 0;
int inByte = 0;

void setup() {
Serial.begin(9600);
establishContact();
}

void loop() {
if(Serial.available()>0);{
inByte=Serial.read();

value= analogRead (felt);
value = value/4;
delay(10);
}
Serial.write(value);
}

void establishContact(){
while(Serial.available()<=0){
Serial.print('A');
delay(300);
  }}
