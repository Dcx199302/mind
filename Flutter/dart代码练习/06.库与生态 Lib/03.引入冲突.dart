/**
 * 命名冲突：
 * 当库名冲突时、可以通过 as 关键字、给库声明一个前缀
 */

import '03_lib/common.dart';
// 这里有重名的 f1方法
import '03_lib/fucntion.dart' as func;

void main() {
  f1();

  // 使用 function的 f1方法 -- 解决命名冲突的方法
  func.f1();
}
