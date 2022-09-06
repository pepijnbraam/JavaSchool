import controlP5.*;

ControlP5 cp;
Button knopCorrect;
Button KnopIncorrect;
void setup(){
  size(500,500);
  cp = new ControlP5(this);
  knopCorrect = knop("knopCorrect" , "Klik mij" , 10 , 10 , 50 , 50);
  KnopIncorrect = knop("KnopIncorrect" , "Klik mij" , 100, 10 , 50 , 50);

}

void draw(){
  
  
}

Button knop(String ButtonName , String Caption , int posX , int posY , int Width , int Height ){
      return cp.addButton(ButtonName)
            .setPosition(posX ,posY)
            .setSize(Width , Height)
            .setCaptionLabel(Caption);
}

void knopCorrect(){
  println("Goed gedaan!");
}  


void KnopIncorrect(){
  println("Helaas fout!");
}  
