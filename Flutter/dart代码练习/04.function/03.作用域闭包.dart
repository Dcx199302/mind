/**
 * 闭包
 * closure
 */

var globalNum = 100;

void main() {
  printInfo() {
    var lacalNum = 10;
    print(globalNum);
    print(lacalNum);
  }

  printInfo();
  // print(lacalNum);  出错，不能在全局作用域中访问局部变量

  /**
   * 
   */

  parent() {
    var money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  }

  var p = parent();
  p();
  p();
  p();
}
