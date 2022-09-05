
//sketch window
size(500 , 500);

//achtergrond wit
background(255 ,255 ,255);

int CircleSize = 100;

for(int i = 0; i < 5; i++){
  ellipse(width/2, height/2, CircleSize , CircleSize);
  CircleSize-=18 ;
  println(CircleSize);
}
