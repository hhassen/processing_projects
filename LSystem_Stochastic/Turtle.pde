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
      if (c == 'F' || c == 'G') {
        random_factor = 0.01*random(30,100);
        line(0,0,len*random_factor,0);
        translate(len*random_factor,0);
      } 
      else if (c == '+') {
        rotate(theta+random(0,PI/6));
      } 
      else if (c == '-') {
        rotate(-theta+random(0,PI/6));
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
