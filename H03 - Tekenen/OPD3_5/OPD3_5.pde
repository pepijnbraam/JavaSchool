//sketch window
size(500 , 500);

//achtergrond wit
background(255 ,255 ,255);


//hoofd
fill(255 ,255 ,240);
ellipse(width/2, height/2 ,300 , 300);

//ogen 
fill(255,255,255);
ellipse(width/2 + 60, height/2 - 50 ,50 , 50);
ellipse(width/2 - 60, height/2 - 50 ,50 , 50);

fill(0,0,0);
arc(width/2 + 60, height/2 - 50 ,20 , 20 , 0 , PI);
arc(width/2 - 60, height/2 - 50 ,20 , 20 , 0 , PI);

noFill();
arc(width/2, 320,  120, 50, 0, PI);
