/**
 * Mixin（混入）
 * 用作混入的类，不能继承沉了Object以外的其他类
 * class Father {}
 * class MixinA extends Father { }
 * class MixinA extends Object { }
 */

class MixinA extends Object {
  String name = "MixinA";
  void printA() {
    print("A");
  }

  // MixinA();  -- 错误 //作为混入使用的类中不能包含有 - 构造函数
}

mixin MixinB {
  String name = "MixinB";

  void printB() {
    print("B");
  }
  // MixinB();   //Mixins can't declare constructors--mixin不能声明构造函数
}

/**
 * 混入注意引入的顺序
 * 
 */
class MyClass with MixinA, MixinB {}

void main() {
  var c = new MyClass();
  c.printA();
  print(c.name); // B中的属性覆盖了A中的属性、 方法也会覆盖
}
