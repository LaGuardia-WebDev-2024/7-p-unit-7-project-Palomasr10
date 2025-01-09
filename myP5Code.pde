//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var moonHeight = 307;
 var sunHeight = 93;
var moonDir = -1;
var sunDir = 1;
var sunSize = 100;
var moonSize = 0;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
 
//Sun
fill(230,217,86)
stroke(230,217,86)
ellipse(100,sunHeight,sunSize,sunSize)

//Moon
fill(131,132,157)
stroke(131,132,157)
ellipse(300,moonHeight,moonSize,moonSize)


moonHeight = moonHeight + moonDir;

sunSize = sunSize - sunDir/2;

moonSize = moonSize - moonDir/2;

if (moonHeight<93){
moonDir = 1
}
if(moonHeight>307){
moonDir = -1
}

sunHeight = sunHeight + sunDir;

if (sunHeight>307){
sunDir = -1
}
if(sunHeight<93){
sunDir = 1
}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
