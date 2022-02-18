/**
 * Dart中： class的 普通构造函数
 */

// class Point {
//   // late num x;
//   // late num y;
//   /**
//    * 缩写成一行
//    */
//   late num x, y;

//   // 声明普通构造函数
//   Point() {
//     print("我是默认构造函数，实例化时，会第一个被调用");
//     x = y = 0;
//     y = 0;
//     // this.x = 0;   //这里的this 可以省略
//     // this.y = 0;

//     /**
//      * 当命名指向有歧义时，this不能省略
//      * 比如：有个 x属性和x方法  同名
//      */
//   }
// }

// void main() {
//   // new 的时候 调用了 类 Point的同名构造方法  Point()
//   var p = new Point();
// }

// ------------------------------------
class Point {
  late num x, y;
  // Point(num x, num y) {
  //   // 当命名指向有歧义时，this不能省略
  //   this.x = x;
  //   this.y = y;
  // }

  Point(this.x, this.y); //简写
}

void main() {
  // new 的时候 调用了 类 Point的同名构造方法  Point()  传入初始赋值
  var p = new Point(1, 2);
  print(p.y);
}
