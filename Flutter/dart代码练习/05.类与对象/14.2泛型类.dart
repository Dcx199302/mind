/**
 * 泛型类
 */

// 写死的类
class CommonClass {
  //通过构造函数声明集合
  Set s = new Set<int>(); //使用泛型限制 只能传入数字

  void add(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

// 泛型类 -----------------------------------
class GenericsClass<T> {
  //通过构造函数声明集合
  Set s = new Set<T>(); //使用泛型限制 只能传入数字

  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main() {
  var c = new CommonClass();
  c.add(123);
  c.add(121);
  c.add(123); //set不能重复、这条不生效
  c.info();

  // --------------------------
  // 泛型、调用时声明类型 - 实例化泛型类
  GenericsClass g = new GenericsClass<int>();
  g.add(1);
  g.add(2);
  g.info();

  // --------------------------
  // 系统自带的泛型
  Set s = new Set(); //dynamic 类型 ： 动态的、
  s.add(1);
  s.add("hello");

  // --------------------------
  // 系统自带的泛型
  Set a = new Set<int>(); //dynamic 默认类型 ： 动态的、 这里给指定了int
  a.add(1);
  // a.add("hello"); //这里会有报错
  print(a);
}
