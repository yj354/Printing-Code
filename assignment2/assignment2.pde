import processing.pdf.*;

//printing variables
float print_width = 17; //width in inches
float print_height = 20; //height in inches
float make_bigger = 20; //magnifies sketch window  

float amplitude = 40; //wave amplitute
float adjustWet = 20;

void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  beginRecord(PDF, "assignment2.pdf"); 

  background(255);
  smooth();

  //Right wave -- sharp --
  beginShape();
  fill(0);
  vertex(width, 0);
  for (int i = 0; i <= height; i ++) { 
    vertex(width/8*7, amplitude*i);
    bezierVertex(width/8*7, amplitude*i, width, amplitude/2*(2*i+1), width/8*7, amplitude*(i+1));
  }
  vertex(width, height);
  endShape();

  //Left wave -- wet --
  beginShape();
  //  stroke(0);
  //  strokeWeight(15);
  fill(0);
  vertex(0, 0);
  for (int i = 0; i <= height; i ++) { 
    vertex(0 + adjustWet, amplitude*i);
    bezierVertex(0 + adjustWet, amplitude*i, width/8+10, amplitude/2*(2*i+1), 0 + adjustWet, amplitude*(i+1));
  }
  vertex(0, height);
  endShape();

  //-- Text -- 
  fill(0);
  PFont font;
  font=createFont("daniel", 100);
  textAlign(LEFT);
  textFont(font, 20);
  text("wet.", 0 + 45, height - 10);
  textAlign(RIGHT);
  textFont(font, 20);
  text("sharp.", width - 40, height - 10);

  endRecord();
}


// This code makes the basic wave:
//  translate(width/8, 0); or start from vertex(0, 0);
//  vertex(width/8, amplitude*0);
//  bezierVertex(width/8, amplitude*0, width/4, amplitude/2*1, width/8, amplitude*1);
//  vertex(width/8, amplitude*1);
//  bezierVertex(width/8, amplitude*1, width/4, amplitude/2*3, width/8, amplitude*2);
//  vertex(width/8, amplitude*2);
//  bezierVertex(width/8, amplitude*2, width/4, amplitude/2*5, width/8, amplitude*3);
//  vertex(width/8, amplitude*3);

