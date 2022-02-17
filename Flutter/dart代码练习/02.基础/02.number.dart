main() {
  // 声明数字类型的三个关键字
  // 整型、浮点型、数值型
  int a = 16;
  print(a);

  double b = 16.66;
  print(b);

  num c = 18.6;
  print(c);

  // 类型转换
  print(c.toString()); //转字符串
  print(3.8.toInt()); //转整型 - 向下取整 输出3
  print(3.141592653.round()); //四舍五入  输出3
  print(3.1415926.toStringAsFixed(4)); //四舍五入到小数点后4位 输出3.1415
  print(10.remainder(4)); // 取余 。 10 除以 4  输出2
  print(10.compareTo(12)); //比较 0：相等 、  1：大于 、 -1:小于
  print(12.gcd(18)); //返回最大公约数  输出 6

  // 科学计数法
  print(1000.toStringAsExponential(1)); //输出 1.0e+3
}
