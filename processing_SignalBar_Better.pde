
//Declare Variable for the For Loop in setup();
float i;

// Variables declared for Animation function
int x = 0;
float y = 0;
int counter = 0;
int timer = 0;

void setup(){
 
  size(500, 500);
  background(14, 61, 52);
  stroke(0);
  fill(9, 39, 33);
  rect(3,3,492,492,20);
// Construct outlines of scale
  for(i = 2; i <=11; i++)
  {
    
      fill(14, 61, 52);
      stroke(3);
      float expo = i*(exp(sqrt(i)));
      rect((i)*35, 380, 20, -1 * expo);


  }


    fill(255);
    textSize(15);
    text("Bad", 70, 400);
    text("Fair", 215, 400);
    text("Excellent", 340, 400);
    textSize(30);
    text("Call Quality", 180, 35);
    

}

void draw(){
    frameRate(15);
    float randomNum = random(100);
    timer = frameCount;
    signalAnimation(timer);
    if(randomNum < 50){
      flashAnimation(timer, randomNum);
    }
    else{
      fill(14, 61, 52);
      stroke(3);
      rect(10*35, 380, 20, -10*(exp(sqrt(10))));
      rect(11*35, 380, 20, -11*(exp(sqrt(11))));
    }
}


void signalAnimation(int count){
  
   noStroke();
   float expo = count*(exp(sqrt(count)));
   x = x + 35;
   
   // Draws first five bars
   if((count <= 9))
   {
     //Set Color change from Red-Orange after two bars, Orange-Green after four
     if((count > 0) && (count <= 3))
     {
       fill(232, 78, 79);
     }
     else if((count > 3) && (count <= 5))
     {
      fill(232,152,78);
     }
     else if((count >5) && (count <=7))
     {
       fill(232, 195, 78);
     }
     else if((count > 7) && (count <= 9))
     {
       fill(197, 224,75);
     }
     rect(x, 380, 20, -expo);
   }
    
    
    fill(9, 39, 33);
    noStroke();
    rect(35, 380, 25, -70);
  
}

void flashAnimation(int time, float ran){

       //Draw sixth bar based on if remainder of the current Millis count/3 is equal to 0
     if(time >= 10)
     {
      fill(102, 204, 102);
      rect(10*35, 380, 20, -10*(exp(sqrt(10))));
      if(ran < 20)
      {
         rect(11*35, 380, 20, -11*(exp(sqrt(11)))); 

      }
      else{
        stroke(3);
        fill(14,61, 52);
        rect(11*35, 380, 20, -11*(exp(sqrt(11))));
      }
      }
 
}