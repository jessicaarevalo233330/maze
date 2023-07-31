import processing.sound.*;
SoundFile file, win;


PImage img, im;
int rgb;
int posicionX=400, posicionY=400;
void setup(){
  size(800,800);
  img=loadImage("maz.png");
  im =loadImage("laberintu.png");
  file= new SoundFile(this, "tetriss.mpeg");
  win= new SoundFile(this,"win.mpeg");
  
  file.play();
}

void draw(){
 
  image(img,0,0);
  noFill();
  strokeWeight(10);
  stroke(#FF7300);
  ellipse(posicionX,posicionY, 18,18);
   rgb= get(posicionX,posicionY);
  //println(rgb);
 
  
  
  if (rgb==-16777216){
    textSize(100);
    fill(255,0,0);
    text("LOSE",300,400);
    file.stop();
    file.play();
     
   
  }
  else if(rgb==-65536){
    file.stop();
    win.play();
    textSize(60);
    fill(0,0,255);
    text("YOU WIN",300,400);
    int m= minute();
    
     println(m);
     //if (m>10){
       //image(im,0,0);
       //noFill();
       //strokeWeight(10);
       //stroke(#FF7300);
       //ellipse(posicionX,posicionY, 18,18);
       //posicionX=400;
       //posicionY=400;
       //win.stop();
       //file.play();      
     //}
  }
  
  
}
void keyPressed(){
  if (keyCode==UP && rgb==-1){
    posicionY=posicionY-5;    
  }  
  if (keyCode==UP && rgb==-16777216){
    posicionY=posicionY+17;    
  } 
  if (keyCode==DOWN && rgb==-1){
    posicionY=posicionY+5;
  }
  if (keyCode==DOWN && rgb==-16777216){
    posicionY=posicionY-19;
  }
  if (keyCode==RIGHT && rgb==-1){
    posicionX=posicionX+5;
  }
  if (keyCode==RIGHT && rgb==-16777216){
    posicionX=posicionX-15;
  }
  if (keyCode==LEFT && rgb==-1){
    posicionX=posicionX-5;
  }
  if (keyCode==LEFT && rgb==-16777216){
    posicionX=posicionX+15;
  }


}

 
