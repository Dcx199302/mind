import 'Father.dart';

// 2.子类 - extends （继承） -  父类（Father）
class Son extends Father {
  String name = "刘婵";

  // 通过super 继承 父类 - 普通的构造函数
  // Son(String job) : super(job);

  // 普通构造函数 - 继承 - 命名构造函数
  Son(String job) : super.origin(job);

  // 命名构造函数  继承 命名构造函数
  Son.origin(String job) : super.origin(job);

  @override //子类中想写和继承了父类中同名的方法。需要使用@override
  say() {
    super.say;
    print('我的父亲是${super.name}');
    print('我是刘婵');
  }
}
