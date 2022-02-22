class SomeBaseClass {
  // ...
}

// class AnotherClass {}

// 泛型 类型限制
class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {}

void main() {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  print(someBaseClassFoo);

  // var f = Foo<AnotherClass>();  - 错误 类型不对

  // 传入继承至 SomeBaseClass 的子类
  var s = Foo<Extender>(); //可以
  print(s);
}
