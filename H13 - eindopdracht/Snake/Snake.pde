

int snakePosX , snakePosY;
int grid = 15;
int gridX , gridY;
ArrayList<Integer> X = new ArrayList<Integer>();
ArrayList<Integer> Y = new ArrayList<Integer>();
PVector richting = new PVector(0,-1);
PVector Appel;
int score; 
int highScore;
Boolean playing = false;
Boolean gameOver = false;
Boolean paused = false;

void setup(){
  
  //witte achtergrond
  background(255,255,255);
  
  //window 600 bij 600
  size(600,600);
  
  //verdeel in 15 bij 15 "blokken"
  gridX = width / grid;
  gridY = height / grid;
    
 
}

void draw(){
  
  
  //check of de game is gestart
  
  if(!playing){
        
        fill(0, 0, 255); 
        textSize(26); 
        textAlign(CENTER); 
        
        
        if(gameOver){
          
          text("Game over! Klik op je muis om opnieuw te starten!" ,  width/2  , height/2  );
        }
        else{
          
          text("Klik op je muis om te starten!" ,  width/2  , height/2  );
        
        }
        fill(0);
        text("High score: " + highScore ,  width/2  , height/2  + 40 );
  }
  
  else if(paused){
         
        fill(0, 0, 255); 
        textSize(26); 
        textAlign(CENTER); 
        text("Klik op P om te hervatten!" ,  width/2  , height/2  );
        fill(0);
        text("Score: " + highScore ,  width/2  , height/2  + 40 );
  }
  
  else{
    //begin game
    game();
  } 
 

}


void pause(){
    //zet richting naar X 0 Y 0
    richting =  new PVector(0,0);
    
}


void game(){
  
    //achtergrond wit
    background(255,255,255);
    
    //laat score bord zien rechtsboven
    Scorebord();
    
    //als huidige score hoger is dan highscore zet highscore naar huidge score
    if(score > highScore){
      highScore = score;
    }
    
    //teken de appel in de grid
    SpawnAppel();
    
    //blauw
    fill(0, 0, 255);
    
    int snakeLengte = X.size();
    
    
    //teken elk "lichaamdeel" van de snake
    for (int i = 0; i < snakeLengte; i++) {
      rect(X.get(i)*grid, Y.get(i)*grid, grid, grid); 
    }
     
    //elke 10e frame
    if (frameCount % 10 ==0) {
        
      
         // voeg de huidige positie + de richting waar de snake naar toe gaat toe aan de array
         X.add(0, X.get(0) + int(richting.x));
         Y.add(0, Y.get(0) + int(richting.y));
         
         //check of snake border raakt
         if(raaktBorder()){
            playing = false;
            gameOver = true;
   
          
         }
         
         //start bij lichaam dus snakeLengte + 1 en i = 1
         for(int i = 1 ; i < snakeLengte + 1 ; i++){
             
             //snakehoofd positie
             int snakeHoofdPosY = Y.get(0);
             int snakeHoofdPosX = X.get(0);
             
             //snakelichaam positie
             int snakeLichaamDeelPosY = Y.get(i);
             int snakeLichaamDeelPosX = X.get(i);
             
             //game over als snakeHoofd X en Y is dezelfde positie als snakeLichaamdeel
             if(snakeHoofdPosY == snakeLichaamDeelPosY &&  snakeHoofdPosX == snakeLichaamDeelPosX){
                playing = false;
                gameOver = true;
             }
             
          
           
         }

           
         //check of de snake op dezelfde X en Y zit als de appel       
         if(kanAppelEten()){
             EetAppel();
         }
         
         else{
          
           
           int LaatsteYIndex = Y.size() - 1;
           int LaatsteXIndex = X.size() - 1;
           
           //verwijder de laatste item in de arraylist
           X.remove(LaatsteXIndex); 
           Y.remove(LaatsteYIndex);
           
         }
    }
  
}

void Scorebord(){
  textAlign(LEFT);
  textSize(18);
  
  //score = score - 1
  score = int(X.size()) - 1;
  text("Scrore: " + score, width - 110 , 10 ,  width -20 , 50);
  text("High score: " + highScore,width - 110 , 30 ,  width -20 , 50);

}

void SpawnAppel(){
  
  //rode kleur
  fill(255,0,0);
  
  //bepaal X en Y door Appel.x en Appel.y te vermenigvuldigen met de grid size;
  float AppelX = Appel.x * grid;
  float AppelY = Appel.y * grid;
  
  //teken de appel met de X en Y
  rect(AppelX , AppelY, grid,grid);
 
}

void EetAppel(){
    
     //zet de x en y positie naar een random getal binnen de grid
    Appel = new PVector(int(random(gridX)) , int(random(gridY)));
  
  
}


Boolean raaktBorder(){
  
  
  //huidige positie van snake
  int snakePosY = Y.get(0);
  int snakePosX = X.get(0);
  
  
  return snakePosX >= gridX || snakePosX < 0  || snakePosY >= gridY || snakePosY < 0;

}

Boolean kanAppelEten (){
  
   //huidige positie van snake
   snakePosX = X.get(0);
   snakePosY = Y.get(0);
   
   //float naar int
   int AppelPosX = Math.round(Appel.x);
   int AppelPosY = Math.round(Appel.y);
   
   //als Appel positie X en Y hetzelfde is als de snakeHoofd X en Y return true 
   return AppelPosX == snakePosX && AppelPosY == snakePosY;
 
 }

void reset(){
  
    //zet richting naar UP
    richting = new PVector(0,-1);
    
    //Nieuwe Appel op random X en Y op de grid
    Appel = new PVector(int(random(gridX)) , int(random(gridY)));
    
    //score naar 0
    score = 0;
    
    //maak de snake posities leeg
    X.clear();
    Y.clear();
    
    //plaats de snake in het midden van het scherm
    X.add(gridX / 2);
    Y.add(gridY / 2);
    
    //start de game
    playing = true;
    gameOver = false;
    

}


void mousePressed(){
  if(!playing){
    reset();
  
  }

}

void keyPressed(){
   
  //zet controls uit als game gepauzeerd is

  if(playing && !paused){ 
    
     if(keyCode == UP){
       
       //richting omhoog 
       //Y = 1 naar Y = 0 = -1
       richting.y = -1;
       richting.x = 0;
     }
   
     if(keyCode == DOWN){
       
       //richting omlaag 
       //Y = 0 naar Y = 1 = 1
       richting.y = 1;
       richting.x = 0;  
     }
   
     if(keyCode == LEFT){
       
       //richting links 
       //X = 1 naar X = 0 = -1
       richting.y = 0;
       richting.x = -1;      
     }
   
     if(keyCode == RIGHT){
       
       //richting links 
       //X = 0 naar X = 1 = 1
       richting.y = 0;
       richting.x = 1; 
     }
     
   }
   
   if(keyCode == 'p' || keyCode == 'P'){
     
       if(playing){
         paused = !paused;
       }
     
   }
}
