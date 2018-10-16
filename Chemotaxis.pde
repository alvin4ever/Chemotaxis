 Bacteria [] colony;
 void setup()   
 {     
   size(500,500);
   colony = new Bacteria[50];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {     
   background(0);
   for (int i=0; i<colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
}
   
  
 class Bacteria    
 {     
   int myX, myY;

   Bacteria()
   {
     myX = myY = 250;

   }

   void move()
   {
      myX = myX + (int)(Math.random()*7)-3; 
      myY = myY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
     ellipse(myX,myY,15,15);
     
     if (mouseX > myX)
       myX = myX + (int)(Math.random()*5)-1;
     else
       myX = myX + (int)(Math.random()*5)-3;
     
     if (mouseY > myY)
       myY = myY + (int)(Math.random()*5)-1;
     else
       myY = myY + (int)(Math.random()*5)-3;
     ellipse(mouseX,mouseY,8,8);
   }
 }    
