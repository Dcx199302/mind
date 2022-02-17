void main() {
  // 声明字符串
  var str = '1234';
  print(str);

  // 类型声明
  String a = "123";
  print(a);

  //三个引号
  String str3 = '''hello
  world''';
  print(str3);

  // 常见操作
  print(str + str3); //字符串拼接
  print("$str $str3"); //模板字符串

  // 字符串的分隔
  print((str3.split('')));

  // 字符串的裁切. 去除空格
  print("  abc   ".trim());

  // 判断字符串是否为空
  print(''.isEmpty); //true
  print(''.isNotEmpty); //false

  // 字符串替换
  print(str3.replaceAll('hello', "Hello Dart"));
  //支持正则替换
  print("h1k2d3n4n5n6".replaceAll(RegExp(r'\d+'), '-'));
  // 输出 h-k-d-n-n-n-  正则将数字替换成横线

  // 通过正则匹配手机号
  var isPhone = RegExp(r'^1\d{10}$'); //简单的号码匹配  1开头，后面10位数字
  print(isPhone.hasMatch('13333333333')); //true

  // 查找字符串
  print(str3.contains('e')); //是否包含字符 e // true

  // 定位字符串
  print(str3.indexOf('e')); //字符出现的位置   这里是1
}
