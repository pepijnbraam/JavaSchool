void setup(){
    String stringeen = "1";
    String stringtwee = "2";
    String stringdrie= "3";
    String stringvier = "4";
    String samengevoegd = voegStringsSamen( stringeen, stringtwee , stringdrie  , stringvier);
    println(samengevoegd);
}

void draw(){
}



String voegStringsSamen(String stringeen ,  String stringtwee , String stringdrie ,String stringvier ){
  String samenGevoegd = stringeen + stringtwee + stringdrie + stringvier;
  return samenGevoegd;
  
}
