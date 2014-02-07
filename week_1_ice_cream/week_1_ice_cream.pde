import processing.pdf.*;

void setup() {
  //  size(595, 842); //dpi72
  size(612, 792);

  beginRecord(PDF, "assignment1.pdf"); 
  
  background(0);
  smooth();
  noStroke();


  ellipseMode(CENTER);
  fill(255);
  ellipse(width/34*18.5+10, height/44*6.5, width/34*15.25*2, width/34*15.25*2);


  triangle(width/34*10.5, height/44*22.5, width, height/44*14, width, height/44*45);


  //  translate(1, height/2);
  rotate(-PI/9);
  rectMode(CORNER);
  fill(0);
  rect(width/34*5-50, height/44*19+20, width/34*36, height/44*5, 5);

  endRecord();
}

