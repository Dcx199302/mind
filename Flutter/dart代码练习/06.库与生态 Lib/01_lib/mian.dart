// 引入自定义库
import 'myCustom.dart';

import 'dart:core'; //这个库会被默认引入、不用声明也可以访问

// 引入系统库
import "dart:math";

void main(List<String> args) {
  // 自定义库
  MyCustom mc = new MyCustom();
  mc.info();

  // 系统库 - 直接使用系统库的 - api
  print(pi);
  print(min(3, 6));
  print(max(3, 6));
}


// import "dart:async";