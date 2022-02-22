/**
 * 静态成员可以通过
 * 类名称直接访问（不需要实例化）
 * 实例化的过程是比较消耗性能的
 * 提高性能
 * 
 * 重点：静态成员可以通过类名称直接访问（不需要实例化）
 */

class Person {
  static String name = "张三";
  static double age = 18;
  // static void getName() {
  //   // print(this.name);  //不能通过this关键字访问静态属性
  //   print(name);
  // }
  static getName() {
    // print(this.name);  //不能通过this关键字访问静态属性
    print(name);
  }

  printUserInfo() {
    // 非静态方法可以访问静态 - 属性
    print(name);
    // 非静态方法可以访问静态 - 方法
    getName();
  }
}

void main() {
  // 访问类的静态成员  不用实例化
  print(Person.name);
  // print(Person.getName()); //不能打印没有返回值的函数（void函数）  null也不行
  print(Person.getName());
}
