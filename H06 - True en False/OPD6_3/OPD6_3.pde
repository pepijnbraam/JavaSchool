float Cijfer = 5.43;

//voldoende als  5.5 of hoger dan 5.5

//rond af omhoog
Cijfer = round(Cijfer * 10) * 0.1;

//check of Cijfer afgerond  5.5 of hoger is, zo ja print Gefelicteerd een voldoende :) 

if( Cijfer >= 5.5){
  
      //Cijfer afgerond  5.5 of hoger
      println("Gefelicteerd een voldoende :)");
}
else{
  
      //Cijfer afgerond lager dan 5.5
      println("Helaas een onvoldoende :(");
}
