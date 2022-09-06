
int spatieCount = 0;
int maximaleTijd;

Boolean Started = false;
int gestartOp;

void setup() {
  println("Druk [ENTER] om te beginnen");
  
}


void draw() {
  
  if(millis() >= maximaleTijd && Started){
     Started = false;
     println("Tijd om! Score: " + spatieCount);
     spatieCount = 0;
     

  }  
  
}

void keyReleased(){
  
  int SPACE = 32; //space keycode = 0
  int ENTER = 10; //space keycode = 0
  
  //println(keyCode);
  
  if(!Started && keyCode == ENTER){
      println("Start game!");
      Started = true;
      gestartOp = millis();
      maximaleTijd = gestartOp + 10000;
  }
    
  if (millis() < maximaleTijd && Started) {
      

      if (keyCode == SPACE) {
        spatieCount++;
        println("Huidige Score: " + spatieCount); 
      }
    }
    else if(!Started){
      println("Game nog niet gestart ");
    }
    
    else{
      println("Tijd om! Score: " + spatieCount);
    }

}
