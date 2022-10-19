ArrayList<Button> myButton=new ArrayList<Button>();

//pallete
color red=#E30909;
color pink=#F76BE5;
color blue=#6BB2F7;
color green=#6CE380;
color orange=#F5A439;
color black=#0D0D0D;
color white=#FFFEFC;
color yellow=#FFFC9B;

color backgroundColor=white;
PImage backgroundImg;

boolean mouseReleased=false;
boolean wasPressed=false;

PImage buttonImg;



void setup() {
  size(800, 800);
  buttonImg=loadImage("lights.jpeg");

  myButton.add(new Button("pink", width/2, 100, 400, 100, white, pink));
  myButton.add(new Button("blue", width/2, 300, 400, 100, yellow, blue));
  myButton.add(new Button("green", width/2, 500, 400, 100, black, green));
  //myButton.add(new Button("yellow", width/2, 700, 400, 100, orange, yellow));
  myButton.add(new Button(buttonImg, width/2, 700, 400, 100, orange, orange));
}

void draw() {
  click();
  rectMode(CORNERS);


  fill(backgroundColor);

  noStroke();
  rect(0, 0, width, height);
  for (int i=0; i<myButton.size(); i++) {
    Button temp=myButton.get(i);
    temp.act();
    temp.show();
    if (temp.clicked) {
      backgroundColor = myButton.get(i).highlighted;
    }
  }
}
