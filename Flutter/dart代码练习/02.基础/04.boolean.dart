void main() {
  // 声明布尔值
  bool flag1 = true;
  print(flag1);

  // 显示地进行判断
  var flag3;
  // dart 没有 三个等号。
  if (flag3 == null) {
    print("真");
  } else {
    print("假");
  }

  var n1 = 0 / 0; //NaN
  print(n1);
  print(n1.isNaN); //判断数值是否非数字

  //其他： 一些特殊的判断场景
  // isFinite  是否有限数字
  // isInFinite  是否无限
  // isNegative  是否负数
}
