int leeftijd = 18;
int saldo = 10;
int minLeeftijdAlchohol = 18;
float productPrijs = 6.5;

//check of leeftijd de minmaal de minmale leeftijd of ouder is.
Boolean leeftijdToegestaan = leeftijd >= minLeeftijdAlchohol;

//check of saldo gelijk of meer dan de product prijs is.

Boolean voldoendeSaldo = saldo >= productPrijs;

if(voldoendeSaldo && leeftijdToegestaan){
  
    //leeftijd en saldo is in orde dus kan je het product kopen.
    println("Je hebt het product gekocht.");

}

//als leeftijd niet is toegestaan print e bent niet oud genoeg en het aantal jaar verschil
else if (!leeftijdToegestaan){
     //bereken het verschil hoe lang je nog moet wachten totdat je het product wel mag kopen
    int leeftijdVerschil = minLeeftijdAlchohol - leeftijd; 
    System.out.printf("Je bent niet oud genoeg. Je moet nog %s jaar wachten." , leeftijdVerschil );
}

// je hebt niet genoeg saldo
else {
     
    //bereken het saldo tekort
    float saldoTekort = productPrijs - saldo;
    println("Je komt €" + saldoTekort+ " tekort om dit product te kopen.");
}  
