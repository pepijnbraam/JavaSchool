Boolean questEen = true;
Boolean questTwee = false;
Boolean questDrie = false;


if(questEen && questTwee && questDrie){
   // alle quests voltooid
  println("Gefelicteerd je hebt alle quests voltooid!");
  
}
else if (!questEen){
    print("Je hebt quest een niet voltooid.");
}

else if (!questTwee){
  print("Je hebt quest twee niet voltooid.");
}

else{
  print("Je hebt quest drie niet voltooid.");
}
