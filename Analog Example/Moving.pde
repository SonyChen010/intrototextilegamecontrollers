/**************************************************************************
 * Textile Game Controller workshop 
 * Working with Arduino Micro board and conductive materials
 * Analog switch example
 * Arduino serial communication with Processing 
 * Processing Example code:
 * https://processing.org/discourse/beta/num_1234254675.html
 * Social Body Lab, 2018 Nov.
**************************************************************************/
//Processing 

import processing.serial.*;
Serial myPort;    
int value1;
int value2;
int[]serialInArray = new int [2];
int serialCount=0;
boolean firstContact = false;

int x = 0;
int y = 0;
PImage img;

void setup()
{
  size(900, 900);
  background(225);
  stroke(160);
  fill(255,255,255);
  String portName = Serial.list()[1]; 
  myPort = new Serial(this, portName, 9600);
  img = loadImage("1.png");
}

void draw(){
rect(0,0,900,900);
image(img, x+378, y+378, 126,95);
  
if ((value2 <= 230) && (value2 >= 195)){
y += 1;
}

else if ((value2 <= 250) && (value2 >= 231)){
y -= 1;
}

else{
}}
    
void serialEvent(Serial port){
int inByte = port.read();
if (firstContact == false){
if(inByte == 'A'){
port.clear ();
firstContact = true;
port.write('A');
}}

else{
serialInArray[serialCount] = inByte;
print(inByte+ "\t");
serialCount++;
delay (8);
         
if (serialCount==2){
value1 = serialInArray[0];
value2 = serialInArray[1];
port.write('A');
serialCount = 0;
println();
}}}
