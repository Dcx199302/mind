/**
 * 使用引入的方式、不能访问 带下划线 (_) 的 私有属性
 */
import "Father.dart";
import "Son.dart";

void main() {
  var f = new Father("皇帝");
  // 使用方法去间接读取父类私有的方法
  print(f.getMoney);
  f.say();

  var s = new Son("太子");
  print(s.getMoney);
  s.say();
}
