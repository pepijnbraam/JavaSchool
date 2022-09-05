
int Size = 100;

void setup(){
      
  //sketch window
  size(500 , 500);
  
  //achtergrond wit
  background(255 ,255 ,255);
  

  for(int i = 0; i < 5; i++){
    Size -=18 ;
    Cirkel(Size);
  }
  
 
}

void draw(){
  
}

void Cirkel(int Size){
    ellipse(width/2 - Size / 3 , height/2, Size , Size);

  
}
