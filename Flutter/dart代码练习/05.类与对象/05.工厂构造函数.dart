/**
 * Fctory_Constructor
 * 工厂构造函数
 * factory : 工厂
 * static : 静态的
 * 
 * 没看明白
 */

class Person {
  late String name;
  static Person Instance = Person();

  factory Person([String name = "张三"]) {
    // print(this.name)  工厂函数不能使用this

    // ignore: unnecessary_null_comparison
    // if (Person.Instance == null) {
    //   Person.Instance = new Person.newSelf(name);
    // }
    return Person.Instance;
  }

  // 命名构造函数
  Person.newSelf(this.name);
}

void main() {}
