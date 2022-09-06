
Boolean naamGevonden = false;
String[] namen = {"Pepijn" , "Arjan" , "Guido" , "Myra" , "Astrid" , "Jan"};

void setup(){  
  
  int arrayLengte =  namen.length;
  String naamCheck = "Pe";
  
  for(int i = 0 ; i < arrayLengte; i++){
        if(namen[i] == naamCheck){
            naamGevonden = true;
        }
  }
    
  if(naamGevonden){
    println("Jan gevonden!");
  }
  else{
    println("Jan niet gevonden.");
  }
  
}

void draw(){

}
