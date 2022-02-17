void main() {
  // 地板除
  print(7 ~/ 4); // 返回结果是1
  // 过程： 7 除 4 =  1.75   1.75向下取整等于 1

  // 类型判断运算符
  List list = [];
  if (list is List) {
    print("list 是 List");
  } else {
    print("list is not List");
  }

  if (list is! List) {
    print("list 不是 List");
  } else {
    print("list is List");
  }

  // 避空运算符
  // print(1 ?? 3); // 如果前面的值为空，直接返回3。 目前是返回1
  print(null ?? 12); //返回12

  var a;
  // if (a == null) {
  //   a = 3;
  // }

  a ??= 3; //这里跟上面的 if判断效果是一样的。简写的形式
  print(a); //3

  a ??= 6; //如果a不是null, 则赋值失败
  print(a); //还是3

  // 条件属性运算符- （保护可能为空的属性）
  var m = new Map();
  print(m.length); // 0
  var obj;

  // print(obj
  //     .length); //报错 ：NoSuchMethodError: The getter 'length' was called on null.
  print(obj?.length); //保护可能为空的属性。不包报错

  // 不使用级联运算符
  Set s = new Set();
  s.add(1);
  s.add(2);
  s.add(3);

  s.remove(2);
  print(s);

  // 使用级联
  Set Ss = new Set();
  s
    ..add('a')
    ..add('b')
    ..add('c')
    ..remove('b');

  print(Ss);
}
