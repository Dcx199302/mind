/**
 * 继承
 * extends  
 * 覆写 ： @override
 */

// 1.父类
class Father {
  String name = "刘备";
  num money = 10000000;

  say() {
    print('我是$name');
  }
}

// 2.子类 - extends （继承） -  父类（Father）
class Son extends Father {
  @override //子类中想写和继承了父类中同名的方法。需要使用@override
  say() {
    print('我是$name');
  }
}

void main() {
  var f = new Father();
  print(f.money);
  f.say();

  var s = new Son(); //继承了的类可以访问父类中的属性和方法
  print(s.money);
  s.say();
}
