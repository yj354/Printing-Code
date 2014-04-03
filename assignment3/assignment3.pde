import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;
import processing.pdf.*;

//printing variables
float print_width = 16; //width in inches
float print_height = 20; //height in inches
float make_bigger = 20; //magnifies sketch window 

int sideLength = 40;


void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  beginRecord(PDF, "PDF/assignment3"+ "_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".pdf"); 
  

  colorMode(HSB, 1, 1, 1);
  background(1);
  smooth();
  noStroke();

  // first pick red base color
  TColor color1 = TColor.newHSV(random(0,1), 1, 1);

  // then find colors on each side of this color by adding/subtracting
  // a specific number of degrees on the hue scale. I use 30 here, as the
  // standard color wheel has 12 colors, and 360/12 is 30.
  TColor color2 = TColor.newHSV(color1.hue() - (30f/360f), 1, 1);
  TColor color3 = TColor.newHSV(color1.hue() + (30f/360f), 1, 1);
 
 
  for (int i=0;i<width;i+=sideLength) {
    for (int j=0;j<height;j+=sideLength) {
      rect(i, j, sideLength, sideLength);
    }
  }

  //color1
  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(sideLength * 7, sideLength * 0, sideLength * 1, sideLength * 1); 

  rect(sideLength * 1, sideLength * 0, sideLength * 2, sideLength * 1);
  rect(sideLength * 2, sideLength * 1, sideLength * 2, sideLength * 1);
  rect(sideLength * 3, sideLength * 2, sideLength * 2, sideLength * 1);
  rect(sideLength * 4, sideLength * 3, sideLength * 2, sideLength * 1);
  rect(sideLength * 5, sideLength * 4, sideLength * 2, sideLength * 1);
  rect(sideLength * 6, sideLength * 5, sideLength * 2, sideLength * 1);
  rect(sideLength * 7, sideLength * 6, sideLength * 1, sideLength * 1);

  rect(sideLength * 0, sideLength * 4, sideLength * 1, sideLength * 1);//
  rect(sideLength * 0, sideLength * 5, sideLength * 2, sideLength * 1);
  rect(sideLength * 1, sideLength * 6, sideLength * 2, sideLength * 1);
  rect(sideLength * 2, sideLength * 7, sideLength * 2, sideLength * 1);
  rect(sideLength * 3, sideLength * 8, sideLength * 2, sideLength * 1);
  rect(sideLength * 4, sideLength * 9, sideLength * 2, sideLength * 1);


  //color2
  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(sideLength * 5, sideLength * 0, sideLength * 2, sideLength * 1);
  rect(sideLength * 6, sideLength * 1, sideLength * 2, sideLength * 1);
  rect(sideLength * 7, sideLength * 2, sideLength * 1, sideLength * 1);//

  rect(sideLength * 0, sideLength * 0, sideLength * 1, sideLength * 1);//
  rect(sideLength * 0, sideLength * 1, sideLength * 2, sideLength * 1);
  rect(sideLength * 1, sideLength * 2, sideLength * 2, sideLength * 1);
  rect(sideLength * 2, sideLength * 3, sideLength * 2, sideLength * 1);
  rect(sideLength * 3, sideLength * 4, sideLength * 2, sideLength * 1);
  rect(sideLength * 4, sideLength * 5, sideLength * 2, sideLength * 1);
  rect(sideLength * 5, sideLength * 6, sideLength * 2, sideLength * 1);
  rect(sideLength * 6, sideLength * 7, sideLength * 2, sideLength * 1);
  rect(sideLength * 7, sideLength * 8, sideLength * 1, sideLength * 1);//

  rect(sideLength * 0, sideLength * 6, sideLength * 1, sideLength * 1);//
  rect(sideLength * 0, sideLength * 7, sideLength * 2, sideLength * 1);
  rect(sideLength * 1, sideLength * 8, sideLength * 2, sideLength * 1);
  rect(sideLength * 2, sideLength * 9, sideLength * 2, sideLength * 1);

  //color3
  fill(color3.hue(), color3.saturation(), color3.brightness());
  rect(sideLength * 3, sideLength * 0, sideLength * 2, sideLength * 1);
  rect(sideLength * 4, sideLength * 1, sideLength * 2, sideLength * 1);
  rect(sideLength * 5, sideLength * 2, sideLength * 2, sideLength * 1);
  rect(sideLength * 6, sideLength * 3, sideLength * 2, sideLength * 1);
  rect(sideLength * 7, sideLength * 4, sideLength * 1, sideLength * 1);//

  rect(sideLength * 0, sideLength * 2, sideLength * 1, sideLength * 1);//
  rect(sideLength * 0, sideLength * 3, sideLength * 2, sideLength * 1);
  rect(sideLength * 1, sideLength * 4, sideLength * 2, sideLength * 1);
  rect(sideLength * 2, sideLength * 5, sideLength * 2, sideLength * 1);
  rect(sideLength * 3, sideLength * 6, sideLength * 2, sideLength * 1);
  rect(sideLength * 4, sideLength * 7, sideLength * 2, sideLength * 1);
  rect(sideLength * 5, sideLength * 8, sideLength * 2, sideLength * 1);
  rect(sideLength * 6, sideLength * 9, sideLength * 2, sideLength * 1);

  rect(sideLength * 0, sideLength * 8, sideLength * 1, sideLength * 1);//
  rect(sideLength * 0, sideLength * 9, sideLength * 2, sideLength * 1);

  endRecord();
}


