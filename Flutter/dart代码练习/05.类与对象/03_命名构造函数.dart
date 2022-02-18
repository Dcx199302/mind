/**
 * 命名构造函数
 * 作用：同一个类可以在初始化的时候定义不同的初始状态
 */

class Point {
  late num x, y;
  // 普通构造函数
  Point(this.x, this.y);

  // 命名构造函数1 origin  自定义名称
  Point.origin() {
    x = 0;
    y = 0;
  }

  // 命名构造函数2  fromJson 自定义名称
  Point.fromJson({x: 0, y: 0}) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  Point p1 = new Point.origin();
  print(p1.x);

  Point p2 = new Point.fromJson(x: 6, y: 6);
  print(p2.x);
}
