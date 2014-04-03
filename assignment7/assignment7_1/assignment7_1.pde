import processing.pdf.*;
import toxi.util.datatypes.*;
import toxi.color.*;
//import geomerative.*;

//printing variables
float print_width = 16; //width in inches
float print_height = 20; //height in inches
float make_bigger = 20; //magnifies sketch window 

void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  smooth();
  noStroke();
  beginRecord(PDF, "assignment7.pdf"); 

  colorMode(HSB, 360, 100, 100);
  background(0, 0, 0);

  int w = round(width/5); //width of block
  int d = round(width/6);
  int s = round(w/3); //width of dead zone

  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();

  ran.add(color(28, 34, 89), 10);
  ran.add(color(40, 100, 100), 10);
  ran.add(color(30, 100, 100), 10);
  ran.add(color(192, 99, 78), 10);

  for (int i = d/2; i < height + d; i = i+d+height/150 ) {
//      fill(ran.getRandom());//not as random
    for (int j = 0; j < 6; j++) {
      fill(ran.getRandom());//create randomness inside the nested loop
      ellipse(random(j*w+s+d/2, (j+1)*w+s-d/2), i, d, d);
    }
  }

  for (int k = 1; k < 5; k++) {
    fill(0, 0, 0);
    rect(k*w, 0, s, height);
  }

  endRecord();
}

//    ellipse(random(0*w+s+d/2, 1*w+s-d/2), i, d, d);
//    ellipse(random(1*w+s+d/2, 2*w+s-d/2), i, d, d);
//    ellipse(random(2*w+s+d/2, 3*w+s-d/2), i, d, d);
//    ellipse(random(3*w+s+d/2, 4*w+s-d/2), i, d, d);
//    ellipse(random(4*w+s+d/2, 5*w+s-d/2), i, d, d);

