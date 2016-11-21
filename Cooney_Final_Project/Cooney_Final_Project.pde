//Bobbie Cooney 
//Final Project 

ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();//squares on grid
int w = 30; //width
int h = 30; //height
int ss = 20; //square size
void setup(){
  size(500, 500);
  
}
void draw(){
  background(255);
  for(int i = 0; i< w; i++) line(i*ss, 0, i*ss, height);
  for(int i = 0 ; i< h; i++) line(0, i*ss, width, i*ss);
  
}