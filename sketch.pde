
float[][] vertice=new float[11][3];
float[][] vertices = new float[11][3];
float theta = 0.07;
  int center = 220;
  int center2=180;


void setup() {
  size(400, 400);
  int shift1=100;
  vertice[0][0]=shift1+120; vertice[0][1]=100; vertice[0][2]=0;
  vertice[1][0]=shift1+175; vertice[1][1]=50; vertice[0][2]=0;
  vertice[2][0]=shift1+200; vertice[2][1]=100; vertice[0][2]=0;
  vertice[3][0]=shift1+225; vertice[3][1]=150; vertice[0][2]=0;
  vertice[4][0]=shift1+170; vertice[4][1]=175; vertice[0][2]=0;
  vertice[5][0]=shift1+200; vertice[5][1]=250; vertice[0][2]=0;
  vertice[6][0]=shift1+230; vertice[6][1]=325; vertice[0][2]=0;
  vertice[7][0]=shift1+150; vertice[7][1]=300; vertice[0][2]=0;
  vertice[8][0]=shift1+120; vertice[8][1]=250; vertice[0][2]=0;
  
  vertice[9][0]=shift1+150; vertice[9][1]=175; vertice[9][2]=0;
  vertice[10][0]=vertice[9][0]+50; vertice[10][1]=vertice[9][1]+100; vertice[10][2]=0;


  int shift = 300;
  
  vertices[0][0]=shift-120; vertices[0][1]=100; vertices[0][2]=0;
  vertices[1][0]=shift-175; vertices[1][1]=50; vertices[0][2]=0;
  vertices[2][0]=shift-200; vertices[2][1]=100; vertices[0][2]=0;
  vertices[3][0]=shift-225; vertices[3][1]=150; vertices[0][2]=0;
  vertices[4][0]=shift-170; vertices[4][1]=175; vertices[0][2]=0;
  vertices[5][0]=shift-200; vertices[5][1]=250; vertices[0][2]=0;
  vertices[6][0]=shift-230; vertices[6][1]=325; vertices[0][2]=0;
  vertices[7][0]=shift-150; vertices[7][1]=300; vertices[0][2]=0;
  vertices[8][0]=shift-120; vertices[8][1]=250; vertices[0][2]=0;
  
  vertices[9][0]=shift-150; vertices[9][1]=175; vertices[9][2]=0;
  vertices[10][0]=vertices[9][0]-50; vertices[10][1]=vertices[9][1]+100; vertices[10][2]=0;

  for(int p =0;p<11;p++){
     vertice[p][0]-=center;
     float temp = vertice[p][0];
     
     vertice[p][0]=temp*cos(-45)+vertice[p][2]*sin(-45);
     vertice[p][2]=temp*-sin(-45)+vertice[p][2]*cos(-45);
     
     vertice[p][0]+=center;
     
     vertices[p][0]-=center2;
     float temp2 = vertices[p][0];
     
     vertices[p][0]=temp2*cos(45)+vertices[p][2]*sin(45);
     vertices[p][2]=temp2*-sin(45)+vertices[p][2]*cos(45);
     vertices[p][0]+=center2;
    }


}


int i = 0;
void draw(){

  background(180);
  noStroke();
  fill(50);
  ellipse(200,90,30,40);
  ellipse(200,140,36,90);
  ellipse(200,200,36,125);
  ellipse(200,120,40,60);
  

  noFill();
  strokeWeight(1);
  stroke(0);
  bezier(205,70,200,50,250,30,250,50);
  bezier(195,70,200,50,150,30,150,50);
  noStroke();
  fill(255);

  if(i%76<=37){
    for(int p =0;p<11;p++){
     vertice[p][0]-=center;
     float temp = vertice[p][0];
     
     vertice[p][0]=temp*cos(theta)+vertice[p][2]*sin(theta);
     vertice[p][2]=temp*-sin(theta)+vertice[p][2]*cos(theta);
     
     vertice[p][0]+=center;
     
     vertices[p][0]-=center2;
     float temp2 = vertices[p][0];
     
     vertices[p][0]=temp2*cos(-theta)+vertices[p][2]*sin(-theta);
     vertices[p][2]=temp2*-sin(-theta)+vertices[p][2]*cos(-theta);
     vertices[p][0]+=center2;
    }
  }
  else{
    for(int p =0;p<11;p++){
     vertice[p][0]-=center;
     float temp = vertice[p][0];
     
     vertice[p][0]=temp*cos(-theta)+vertice[p][2]*sin(-theta);
     vertice[p][2]=temp*-sin(-theta)+vertice[p][2]*cos(-theta);
     vertice[p][0]+=center;
     vertices[p][0]-=center2;
     float temp2 = vertices[p][0];
     
     vertices[p][0]=temp2*cos(theta)+vertices[p][2]*sin(theta);
     vertices[p][2]=temp2*-sin(theta)+vertices[p][2]*cos(theta);
     vertices[p][0]+=center2;  
   }
  }
  fill(255,150,0);
  beginShape();
  vertex(  vertice[0][0],  vertice[0][1]);
  bezierVertex(vertice[1][0],vertice[1][1],vertice[2][0],vertice[2][1],vertice[2][0],vertice[2][1]);
  bezierVertex(vertice[3][0],vertice[3][1], vertice[4][0],vertice[4][1], vertice[5][0],vertice[5][1]);
  bezierVertex(vertice[6][0],vertice[6][1], vertice[7][0],vertice[7][1], vertice[8][0],vertice[8][1]);
  vertex(vertice[0][0],vertice[0][1]);
  endShape();

  
  beginShape();
  vertex(  vertices[0][0],  vertices[0][1]);
  bezierVertex(vertices[1][0],vertices[1][1],vertices[2][0],vertices[2][1],vertices[2][0],vertices[2][1]);
  bezierVertex(vertices[3][0],vertices[3][1], vertices[4][0],vertices[4][1], vertices[5][0],vertices[5][1]);
  bezierVertex(vertices[6][0],vertices[6][1], vertices[7][0],vertices[7][1], vertices[8][0],vertices[8][1]);
  vertex(vertices[0][0],vertices[0][1]);
  endShape();
    fill(255,0,0);
  ellipse(vertice[9][0],vertice[9][1],vertice[10][0]-vertice[9][0],vertice[10][1]-vertice[9][1]);
  ellipse(vertices[9][0],vertices[9][1],vertices[10][0]-vertices[9][0],vertices[10][1]-vertices[9][1]);
  fill(255);
  i++;
}
