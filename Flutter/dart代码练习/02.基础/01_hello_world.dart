main() {
  var num = 123;
  print("hello wrold _ my_dart _app $num");

  final time = DateTime.now();
  print(time);

  // 指定数据类型的方式定义变量
  String name = "张三";
  print(name);

  var age = "18";

  //动态的
  dynamic myname = "李四";
  print(myname);

  // 变量的默认值
  var defaultName;
  print(defaultName); // null

  var Age = 30;
  print(age);
  print(Age);

  // 常量
  const n1 = 1;
  // n1 = 6  //错误。常量一旦声明不能修改
  print(n1);
}
