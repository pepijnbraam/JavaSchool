//sketch window
size(500 , 500);

float lengte = 1.60;
float BMI;
float leeftijd = 70;
float gewicht = 170.5;
String BMIStatus = "";

//bereken BMI op basis van lenghte leeftijd en gewicht
float lengtheKwadraat = lengte * lengte;

BMI = round((gewicht / lengtheKwadraat) * 10);
BMI /= 10;





//achtergrond wit
background(255 ,255 ,255);


//tekstbox
rect(50, height/2 - 75 ,150 ,30);
rect(50, height/2 - 25 ,150 ,30);
rect(50, height/2 + 25   ,150 ,30);


//tekst
fill(0,0,0);
text("Gewicht: " + gewicht + "KG" , 55, height/2 - 55 );
text("Leeftijd: " + round(leeftijd) , 55, height/2 - 5 );
text("Lengte: " + lengte + "M" , 55, height/2 + 45 );

//bmi

fill(255,255,255);
rect(50, height/2 + 70   ,150 ,30);

//bmi tekst

if(leeftijd < 70){
  //overgewicht
   
  
  if(BMI >= 30 || BMI >=25 && BMI <= 30){
    print("Overgewicht");
    fill(255 , 0 , 0);

    BMIStatus = BMI + " (Overgewicht)";
  }  
  else if(BMI < 18.5){
    print("Ondergewicht");
    fill(255 , 0 , 0);

    BMIStatus = BMI + " (Ondergewicht)";
    
  }
  else{
    print("Gezond");
    fill(0 , 255 , 0);
    BMIStatus = BMI + " (Gezond Gewicht)";
  }
}
else{
  //ouder dan 70
  if(BMI < 22){
        print("Ondergewicht");
        fill(255 , 0 , 0);
        BMIStatus = BMI + " (Ondergewicht)";
  }
  else if(BMI >= 30 || BMI > 28 && BMI < 30){
        
        print("Overgewicht");
        fill(255 , 0 , 0);
        BMIStatus = BMI + " (Overgewicht)";
  }
  else{
    
      print("Gezond");
      fill(0 , 255 , 0);
      BMIStatus = BMI + " (Gezond Gewicht)";
  }
}
textSize(12);
text("BMI: " + BMIStatus , 55 , height/2 + 90);
