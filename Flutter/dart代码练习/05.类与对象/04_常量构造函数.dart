/**
 * 常量购置函数
 * 如果类生成的对象不会改变，你可以通过常量构造函数使这些对象成为编译时常量
 * 不能有函数体
 */

class Point {
  // 如果类里面所有属性都是常量 - 称为常量类  -  编译速度更快
  late num x, y;
  Point(this.x, this.y);
}

// 不可变的 ： Immutable
/**
 * Immutable ： 不可变的
 * final ：最终的
 * late : 末期
 */
class ImmutablePoint {
  // 属性必须使用 final 声明

  final num x;
  final num y;
  // late final num z;   常量

  // 常量构造函数必须使用const声明
  const ImmutablePoint(this.x, this.y);
}

void main() {
  var p1 = new Point(1, 2);
  var p2 = new Point(1, 2);
  print(p1 == p2); ////false 存储的地址不一样

// 使用new关键字会将常量构造函数当成普通构造函数使用
  var p5 = new ImmutablePoint(1, 2);
  var p6 = new ImmutablePoint(1, 2);
  print(p5 == p6); //false

  // 使用const 常量构造函数
  var p7 = const ImmutablePoint(1, 2);
  var p8 = const ImmutablePoint(1, 2);
  print(p7 == p8); //true
}
