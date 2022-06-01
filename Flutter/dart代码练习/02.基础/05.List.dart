void main() {
  // 字面量方式
  List list = ["a", "b", 12]; //不限定元素的数据类型
  List list1 = <int>[1, 2, 111]; //限定元素的数据类型是 int

  // 构造函数方式
  List list3 = new List.empty(growable: true); //不限制长度的空列表
  List list4 = new List.filled(3, 0); //声明指定长度的填充列表

  // 扩展操作符（...）
  var list5 = [1, 2, 3];
  var list6 = [0, ...list5];

  print([list, list1, list3, list4, list5, list6]);

  // 如果前面没值
  var l6;
  var l7 = [7, ...?l6]; //使用 ？ 号判断是否可以扩展
  print(l7);

  // 返回列表的长度
  print(l7.length);

  // 列表翻转
  print(l7.reversed); //直接翻转不是列表了
  print(l7.reversed.toList()); // 翻转后转成列表

  // 添加元素
  l7.add(1);
  // l7.addAll(iterable)   //iterable ： 可迭代的
  l7.addAll([4, 5, 6, 7]);
  print(l7);

  // 删除元素
  l7.remove(6); //删除数组中的6
  print(l7);

  l7.removeAt(1); //根据下标删除
  print(l7);

  // l7.insert(index, element)     插入单个元素， 其他元素往后挪
  // l7.insertAll(index, iterable)    插入多个元素， 其他元素往后挪

  // 清空
  l7.clear();
  print(l7);

  // 合并元素
  List words = ['hello', 'world'];
  print(words.join('-')); //输出 ： hello-world
}
