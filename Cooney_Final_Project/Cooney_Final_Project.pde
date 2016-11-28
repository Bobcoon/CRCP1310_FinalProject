//Bobbie Cooney 
//Final Project 

ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
//array for coordinates on grid 

int w = 30; //width
int h = 30; //height
int ss = 20; //square size
int dir= 2;
int[] dx = {0,0,1,-1};
int[] dy= {1,-1,0,0};
void setup(){
  size(500, 500);
  x.add(5);
  y.add(5);
  
}
void draw(){
  background(255);
  //for loops to construct the grid
  for(int i = 0; i< w; i++) line(i*ss, 0, i*ss, height);
  for(int i = 0 ; i< h; i++) line(0, i*ss, width, i*ss);
  for(int i = 0; i< x.size(); i++){
    fill(0,255,0);
    rect(x.get(i)*ss, y.get(i)*ss, ss, ss);
  }
  
}