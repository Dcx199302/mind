/**
 * initializer : 初始化程序 
 */

class Rect {
  late int height;
  late int width;

  // 调用默认构造函数时，给参数赋值
  // Rect([int height = 2, int width = 10]) {
  // this.height = height;
  // this.width = width;
  //   print("${this.height}---${this.width}");
  // }

  // Rect({int height = 2, int width = 10}) {
  //   this.height = height;
  //   this.width = width;
  //   print("${this.height}---${this.width}");
  // }

  // 初始化列表, 省了 this.x = x 的步骤
  Rect()
      : height = 4,
        width = 20 {
    // 不用手动赋值
    print("${this.height}---${this.width}");
  }

  getArea() {
    return this.height * this.width;
  }
}

// -----------------------------
class Point {
  late double x, y, z;
  Point(this.x, this.y, this.z);

  // 初始化列表的特殊用法（重定向构造函数）
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  var r = new Rect();
  print(r);

  // 实例化点
  var p = new Point(1, 2, 3);
  print(p.z);

  var p2 = new Point.twoD(4, 5);
  print(p2.z); //0
}
