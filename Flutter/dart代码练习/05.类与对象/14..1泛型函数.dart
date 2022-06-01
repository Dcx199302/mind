/**
 * 返回类型 函数名<输入类型>(参数类型 参数){
 *    函数体
 * }
 * 
 * 相当于在调用的时候确定函数 返回值、参数、返回值的类型
 * 
 * 减少了代码的书写量
 */

// 定义一个泛型函数
T getData<T>(T value) {
  return value;
}

// 只约定参数类型，不约定返回类型
getdataS<T>(T value) {
  return value;
}

/**
 * 
 */
void main() {
  // 使用泛型的时候声明类型、
  getData<int>(12);
  getData<String>("12");

  // 相当于调用了这个函数
  // int get_Data(int value) {
  //   return value;
  // }
}
