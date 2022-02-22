//假设存在文件 func.dart;  假设func中有3个方法

void f1() {}
void f2() {}
void f3() {}

// 其他文件引入 --------------------------------------

/**
 * 包含引入
 */
// import 'lib/func.dart' show f1,f3;

// main() {
//   f1();
//   f3();
// }


/**
 * 排除引入
 */
// import 'lib/func.dart' hide f1,f3;

// main() {
//   f2();
// }