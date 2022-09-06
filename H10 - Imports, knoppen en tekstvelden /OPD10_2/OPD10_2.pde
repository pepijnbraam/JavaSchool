import controlP5.*;

ControlP5 cp;
Button Knop;
Textfield voornaamVeld;

void setup(){
  size(500,500);
  cp = new ControlP5(this);
  Knop = knop("PrintNaam" , "Klik mij" , 10 , 10 , 50 , 50);
  voornaamVeld = tekstInput("Voornaam" , "Voornaam" , 100 , 10 , false);
}

void draw(){
  
  
}

Button knop(String ButtonName , String Caption , int posX , int posY , int Width , int Height ){
      return cp.addButton(ButtonName)
            .setPosition(posX ,posY)
            .setSize(Width , Height)
            .setCaptionLabel(Caption);
}

Textfield tekstInput(String FieldName , String Caption , int posX , int posY , Boolean AutoClear){
  return  cp.addTextfield(FieldName)
                .setPosition(posX,posY)
                .setAutoClear(AutoClear)
                .setCaptionLabel(Caption)
                .setColorLabel(color(255,0,0));


}

void PrintNaam(){
  
  String voornaam = voornaamVeld.getText();
  System.out.printf("Hoi mijn naam is: %s \n" , voornaam);
}  
