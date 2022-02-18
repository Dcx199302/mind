/**
 * getter和setter
 */

class Circle {
  final double PI = 3.141592653;
  late num r;
  Circle(this.r);
  // num area() {
  //   return this.PI * this.r * this.r;
  // }
  num get area {
    return this.PI * this.r * this.r;
  }

  set setR(value) {
    this.r = value;
  }
}

void main() {
  var c = new Circle(10);
  // print(c.area());   //访问方法
  print(c.area); //访问getter

  // 通过setter修改属性
  c.setR = 20;
  print(c.area);
}
