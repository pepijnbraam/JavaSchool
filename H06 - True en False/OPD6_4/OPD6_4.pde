int leeftijd = 24;

//kleuter = < 4
//kind = < 12
//tiener = < 20
//adolescent = < 25
//volwassene = >= 25

int kleuter = 4;
int kind = 12;
int tiener = 20;
int adolescent , volwassene;


//zet adolescent en volwassene beide 25 als waarde;
adolescent = volwassene = 25;

if(leeftijd < kleuter){
  //kleuter
  println("Je bent een kleuter.");
}

else if(leeftijd < kind){
  //kind
    println("Je bent een kind.");
}

else if(leeftijd < tiener){
  //tiener
    println("Je bent een tiener.");
}

else if(leeftijd < adolescent){
  //adolescent
    println("Je bent een adolescent.");
}

else{
  //volwassene
    println("Je bent een volwassene.");
}
