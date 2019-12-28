/* Daniel Shiffman               */
/* The Nature of Code            */
/* http://www.shiffman.net       */
/* daniel.shiffman@nyu.edu       */

LSystem lsys;
Turtle turtle;

void setup() {
  size(800, 800);
  /*
  // Create an empty ruleset
   Rule[] ruleset = new Rule[2];
   // Fill with two rules (These are rules for the Sierpinksi Gasket Triangle)
   ruleset[0] = new Rule('F',"F--F--F--G");
   ruleset[1] = new Rule('G',"GG");
   // Create LSystem with axiom and ruleset
   lsys = new LSystem("F--F--F",ruleset);
   turtle = new Turtle(lsys.getSentence(),width*2,TWO_PI/3);
   */

  /*Rule[] ruleset = new Rule[1];
   //ruleset[0] = new Rule('F',"F[F]-F+F[--F]+F-F");
   ruleset[0] = new Rule['F',"FF+[+F-F-F]-[-F+F+F]");
   lsys = new LSystem("F-F-F-F",ruleset);
   turtle = new Turtle(lsys.getSentence(),width-1,PI/2);
   */

  Rule[] ruleset = new Rule[2];
  ruleset[0] = new Rule('X', "X[-FFF][+FFF]FX");
  ruleset[1] = new Rule('Y', "YFX[+Y][-Y]");
  lsys = new LSystem("YYY", ruleset);
  turtle = new Turtle(lsys.getSentence(), height/3, radians(25.7));



  smooth();
}

void draw() {
  background(255);  
  fill(0);
  //text("Click mouse to generate", 10, height-10);

  translate(width/2, height);
  rotate(-PI/2);
  turtle.render();
  noLoop();
}

int counter = 0;

void mousePressed() {
  if (counter < 10) {
    pushMatrix();
    lsys.generate();
    turtle.setToDo(lsys.getSentence());
    turtle.changeLen(0.5);
    popMatrix();
    redraw();
    counter++;
  }
}
