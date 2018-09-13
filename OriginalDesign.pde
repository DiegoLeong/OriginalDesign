int closure=140;

void setup (){
    size(800,800);
    background(13,21,79);
}
void draw(){
  white();
  retina();
  pupils();
  eyelids();
  nose();
}
void mousePressed() {
  closure=70;
}
void mouseReleased() {
  closure=140;
}

void pupils(){
   int x=160;
   int y=250;
   noStroke();
   fill(0,0,0);
   ellipse(x,y,40,40);
   ellipse(x+480,y,40,40);
}

void retina(){
   int x=160;
   int y=250;
   noStroke(); 
   fill(179,215,190);
   ellipse(x,y,90,90);
   ellipse(x+480,y,90,90);
}

void white(){
   int x=160;
   int y=250;
   noStroke();
   fill(255,255,255);
   ellipse(x,y,150,90);
   ellipse(x+480,y,150,90);
}

void eyelids(){
   if(closure>=140){
     closure-=10;
   }else if (closure<=50){
     closure+=10;
   }
   strokeWeight(50);
   noFill();
   stroke(13,21,79);
   ellipse(160,250,200,closure);
   ellipse(160+480,250,200,closure);
}

void nose(){
   noStroke();
   fill(255,255,255);
   triangle(400,300,400,600,350,600);
}
