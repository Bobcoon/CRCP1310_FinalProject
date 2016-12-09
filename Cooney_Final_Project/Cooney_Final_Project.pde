/*Bobbie Cooney 
 Final Project 
 Portions of this code come from Chapter 6 & 7 of Processing Textbook By Ira Greenberg
 Portions of Game For Loops come from Daniel Shiffman's java script version of the snake game
 https://www.youtube.com/watch?v=AaGK-fj-BAM
 ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
 //array to form the coordinate grid
 */
ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>(); 
//From Ira Greenberg's Processing Textbook "The ArrayList Class" page 240-241

int w = 30; //height 
int h = 30; //width
int ss = 20; //square size
int direction = 2;
int blueberryx = 12; //x coordinate for food
int blueberryy = 10; // y coordinate for food
int[] dx = {0, 0, 1, -1};//change in x
int[] dy= {1, -1, 0, 0};//change in y
boolean gameover= false;
Snake S;
Blueberry B;
void setup() {
  size(500, 500);
  x.add(5);
  y.add(5);
  
}
void draw() {
  background(255);
  
  for (int i = 0; i< w; i++) {
    line(i*ss, 0, i*ss, height);
  }
  for (int i = 0; i< h; i++) {
    line(0, i*ss, width, i*ss);
  }
  for (int i = 0; i< x.size(); i++) {
    fill(250, 3, 160);
    rect(x.get(i)*ss, y.get(i)*ss, ss, ss);
  }
  if (!gameover) {
    fill(0, 0, 255);
    rect(blueberryx*ss, blueberryy*ss, ss, ss);

    if (frameCount %8==0) {
      x.add(0, x.get(0) + dx[direction]);
      y.add(0, y.get(0) + dy[direction]);

      if (x.get(0) <0 || y.get(0) < 0 || x.get(0) >= w|| y.get(0)>=h ) gameover= true;
      if (x.get(0) == blueberryx && y.get(0) == blueberryy) 
        for (int i = 1; i< x.size(); i++) {
          if (x.get(0)==x.get(i) && y.get(0)==y.get(i)) gameover = true;
          blueberryx = (int) random(0, w);
          blueberryy= (int) random(0, h);
        } else {

        x.remove(x.size() - 1);
        y.remove(y.size() -1);
      }
    }
  } else {
    fill(255, 0, 0);
    textSize(30);
    text("GAME OVER!! Press Spacebar.", 40, 223);
    if (keyPressed && key==' ') {
      x.clear(); //found more info on different commands to clear screen after
      y.clear(); //losing game on Processing website 
      x.add(5); //https://processing.org/reference/clear_.html
      y.add(5);
      gameover = false;
    }
  }
}
void keyPressed() {
  int newdirection = key == 'a' ? 0 : (key =='s' ? 1:(key == 'd' ? 2: (key=='f' ? 3 :-1)));
  if ( newdirection != -1) direction = newdirection; //Looked at our virtual keyboard
  // assignment for inspiration
  //to setup keyPressed
}