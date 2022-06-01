void main() {
  //字面量创建set
  var nums = <int>{1, 2, 3, 3}; //重复的元素会被 set 去掉
  print(nums); //{1, 2, 3}

// 构造函数
  var fruits = new Set();
  fruits.add("香蕉");
  fruits.add("苹果");
  fruits.add("橘子");
  print(fruits);
  print(fruits.toList()); // set转换成数组

  List myNums = [1, 2, 3, 3, 4];
  print(myNums.toSet()); //list转set会去掉重复的元素

  // 集合特有的操作
  var caocao = new Set();
  caocao.addAll(['张辽', "司马懿", "关羽"]);

  var liubei = new Set();
  liubei.addAll(['关羽', "张飞", "诸葛亮"]);

// 求交集
  print(caocao.intersection(liubei)); //{关羽}

  // 求并集
  print(caocao.union(liubei)); //{张辽, 司马懿, 关羽, 张飞, 诸葛亮}

  //求差集
  print(caocao.difference(liubei)); //{张辽, 司马懿}

  // 返回第一个元素
  print(caocao.first); //张辽
  // 返回最后一个
  print(caocao.last); //关羽

  // 集合不能通过下标取值
}
