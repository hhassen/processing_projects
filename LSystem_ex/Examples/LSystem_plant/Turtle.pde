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
        line(0,0,len,0);
        translate(len,0);
      }
     else if (c == 'X') {
        color col = color(0, 204, 255);
        fill(col);
        circle(0,0,8);
      } 
      else if (c == 'Y') {
        color col = color(255, 204, 0);
        fill(col);
        //circle(0,0,8);
        //rect(-3,-3,6,10);
        triangle(0,3,0,-3,25,0);
      } 
      else if (c == '+') {
        rotate(theta);
      } 
      else if (c == '-') {
        rotate(-theta);
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
