int EersteGetal = 0;
int TweedeGetal = 1;
int sumVoorgangers;

for( int i = 1; i < 100; i++ ){
  
  println( "[" + i +  "] " + TweedeGetal );
  sumVoorgangers = EersteGetal + TweedeGetal;
  EersteGetal = TweedeGetal;
  TweedeGetal = sumVoorgangers;
  
}
