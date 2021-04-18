//PImage Steph;
//PImage LeBron;
PImage logo;
PrintWriter output;
boolean hent = false;
int x;
String[] players;
String[] names;
PShape TextBox;
PShape ButtonUp;
PShape ButtonDown;
PFont AllStar;
PFont Text;
PFont PlayerNames;
String tekst = "";
float a=0;
int value = 0;
//int[] stephen = {36,64};

void setup() {
  size (600, 1000);
  logo = loadImage ("NBA Logo.png");
  //  Steph = loadImage ("Steph Curry.png");
  //LeBron = loadImage ("LeBron.png");
  output = createWriter("All Star Stats.txt");
  TextBox = createShape(RECT, 0, 0, 220, 70);
  ButtonUp = createShape(TRIANGLE, 30, 75, 58, 20, 86, 75);
  ButtonDown = createShape(TRIANGLE, 30, 75, 58, 130, 86, 75);
  AllStar = createFont("Arial Black", 40);
  Text = createFont("FootLight MT Light", 25);
  PlayerNames = createFont("Arial Rounded MT Bold", 25);

}

void draw() {
  background(252, 247, 135);
  logo.resize(350, 180);
  image(logo, 120, 15);
  textFont(AllStar);
  fill(200, 50, 50);
  text("ALL STAR PLAYER STATS", 15, 245);
//  fill(value);
//  rect(50,50,50,50);
  


  //stroke(204, 102, 0);
  shape(TextBox, 180, 270);

  fill(0, 0, 0);


  // beginShape();
  ButtonUp.setFill(color(23, 64, 139));//fill(23, 64, 139);
  shape(ButtonUp, 50, 365);
  // noStroke();
  // endShape();

  ButtonDown.setFill(color(201, 8, 42));
  shape(ButtonDown, 50, 415);


  //  fill(50, 50, 250);
  //  text("Type Player Name...", 190, 313);

  textFont(Text);
  fill(0, 0, 0);
  text(tekst, 190, 320);

  //Steph.resize(200, 120);
  //image(Steph, 180, 220);

  players = loadStrings("All Star Stats.txt");
  


  //String names = "Stephen Curry, Lebron James, Kevin Durant, Giannis Antetokoumpo, Bradley Beal, Kyrie Irving, Luka Doncic, Jayson Tatum, Zion Williamson, Nikola Jokic, James Harden, Paul George, Damian Lillard, Devin Booker, Anthony Davis, Joel Embiid, Ven Simmons, Nikola Vucevic, Julius Randle, Donovan Mitchell, Chris Paul, Zach LaVine, Rudy Gobert, Jaylen Brown, Mike Conley"; 
  String[] list = split(players[x], '-');
  textFont(PlayerNames);
  text(list[0], 200, 400);
  text(list[1], 235, 450);
  text(list[2], 235, 500);
  text(list[3], 235, 550);
  //text(players[0],150,350);


  hent=true;
}


void keyPressed() {
  
  if (key == BACKSPACE) {
    String nyTekst = "";
    for (int i=0; i< tekst.length()-1; i ++) {
      nyTekst = nyTekst + tekst.charAt(i);
    }
    tekst = nyTekst;
  } else {
    tekst = tekst + key;
  }

  for (int i=0; i<players.length; i++) { // masse strings der ligger i player-array
    if (players[i].toLowerCase().contains(tekst)) {
      println("Player Found");
      x=i;
      break; //Nå man har fundet en spiller, så "stopper man programmet"
    }
  }

  // tekst = tekst.replaceAll("^[a-zA-Z ]+", "");
}

//  if (key == '1') {
//    x = 0;
//  } else if (key == '2') {
//    x = 1;
//  } else if (key =='3') {
//    x = 2;
//  } else if (key =='4') {
//    x = 3;
//  }
//}

void mousePressed() {

  if (mouseX>80 && mouseX<130 && mouseY>380 && mouseY<430) {
    x = x - 1;
    println("Button Up Pressed");
  }
  if (mouseX>80 && mouseX<130 && mouseY>460 && mouseY<510) {
    x = x + 1;
    println("Button Down Pressed");
 
// if (value == 0) {
//    value = 255;
//  } else {
//    value = 0;
    
//  }
}  

}
 
  
    
    
