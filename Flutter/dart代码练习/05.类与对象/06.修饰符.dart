/**
 * 修饰符
 * TypeScirpt中的修饰符包含：
 * public / protected / private
 * 公共/受保护/私有
 */

/**
 * Dart中没有这些修饰符
 * 
 */

class Person {
  late String name; //默认是公开的
  num _money = 100;
  Person(this.name);
}

void main() {
  var p = new Person("张三");
  print(p.name); //默认是公开的

  /**
   *  下划线的代表私有属性
   * _下划线的作用域是 同一个dart文件
   * 只有把类单独抽离出去，私有属性和方法才起作用
   */
  print(p._money);
}
