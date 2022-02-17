void main() {
  var nums = [1, 2, 3];

  // for循环
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  // forEach
  nums.forEach((element) {
    print(element);
  });

  // 用for循环实现 map 的逻辑
  var newNums = [];
  for (var i = 0; i < nums.length; i++) {
    newNums.add(nums[i] * nums[i]);
  }
  print(newNums);

  // map
  var newNumbs = nums.map((e) {
    return e * e;
  });

  print(newNumbs);
  print(newNumbs.toList());

  // where()  返回符合条件的元素
  // 判断数字是否是奇数
  bool isOdd(n) => n % 2 == 1;
  var oddNum = nums.where((element) => isOdd(element));
  print(oddNum.toList());

  // 使用any检测是否有奇数 （至少一个）
  print(nums.any(isOdd));

  // 使用every（） 判断是否都是奇数
  print(nums.every(isOdd));

  // 扩展
  var pairs = [
    [1, 2],
    [
      3,
      4,
    ]
  ];
  var flattened = pairs.expand((element) => element).toList();
  print(flattened);

// 将二维数组进行一次降维度
// 输出： [1,2,3,4]

// 折叠  - -对列表中的每一个元素，做一个累计操作
  // int result = nums.fold(initialValue, (previousValue, element) => null);
  print(nums); //[1,2,3]
  int result = nums.fold(2, (p, element) => p * element);
  // 2 * 里面的元素依次去乘以   ： 2 * （1*2*3) = 12
  print(result);
}
