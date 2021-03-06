/* Daniel Shiffman               */
/* http://www.shiffman.net       */

class Turtle {

  String todo;
  float len;
  float theta;
  float random_factor;

  Turtle(String s, float l, float t) {
    todo = s;
    len = l; 
    theta = t;
  } 

  void render() {
    stroke(0,175);
    for (int i = 0; i < todo.length(); i++) {
      char c = todo.charAt(i);
      random_factor = random(90,110);
      if (c == 'F' || c == 'G') {
        line(0,0,len*0.01*random_factor,0);
        translate(len*0.01*random_factor,0);
      } 
      else if (c == '+') {
        rotate(theta+random(PI/6));
      } 
      else if (c == '-') {
        rotate(-theta+random(PI/6));
      } 
      else if (c == '[') {
        pushMatrix();
      } 
      else if (c == ']') {
        popMatrix();
      }
    } 
  }

  void setLen(float l) {
    len = l; 
  } 

  void changeLen(float percent) {
    len *= percent; 
  }

  void setToDo(String s) {
    todo = s; 
  }

}
