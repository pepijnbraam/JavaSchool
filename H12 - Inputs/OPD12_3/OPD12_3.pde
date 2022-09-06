void setup(){
  
  size(500,500);
  
}
void draw(){
  
}

void mouseMoved(){
  
  Vierkant(mouseX , mouseY);
}


void Vierkant(int posX , int posY){
  
  //maak voor elke vierkant random rgb waarde
   fill(random(255) , random(255) , random(255));
   
   rect(posX, posY, 50, 50);
}
