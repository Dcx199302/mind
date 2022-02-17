void main() {
  // Map声明方式  - 字面量
  var person = {"name": "张三", "age": 20};
  print(person);

  // 构造函数
  // var p = new Map();
  var p = Map(); //新版的dart中 可以省略new 关键字
  p["name"] = "李四";
  p["age"] = 22;

  print(p);

  // 访问属性
  print(p["name"]);

  // 有时候 这个key 【"name"】 不存在
  print(p.containsKey("name")); //判断这个key存不存在   这里是存在的 --true
  print(p.containsKey("aaa")); //判断这个key存不存在   这里不存在的 --false

  // 赋值
  // 如果key不存在，我们才赋值（如果kkey已经存在，则不赋值）
  p.putIfAbsent('gender', () => "男"); //这里不存在gender, 可以赋值
  print(p);
  p.putIfAbsent('gender', () => "女"); //这里存在gender, 不会再去覆盖这个值
  print(p);

  // 获取map中所有的key
  print(p.keys);
  // 获取map中所有的value
  print(p.values);

  // 根据条件进行删除
  p.removeWhere((key, value) => key == "gender");
  print(p);
  print(p['name']);
}
