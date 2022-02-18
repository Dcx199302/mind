void main() {
  /**
   * 必填参数
   */
  String userInfo(String name) {
    return "你好、$name";
  }

  var a = userInfo("法外狂徒张三");
  print(a);

  /**
   * 可选参数
   */
  String userInfo_1(String name, [int age = 18]) {
    return "你好、$name/ $age";
  }

  print(userInfo_1);

// 定义可选参数的时候 - 可能会报警告
  // userInfo_1(String name, [int age])  //报错

// 解决方案
  // userInfo_1(String name, [dynamic age])  //修改类型
  // userInfo_1(String name, [int age = 18])  //给定初始值

  /**
   * 命名参数
   */

  String userInfo_2(String name, {int age = 10}) {
    return "你好、$name/ $age";
  }

  String res = userInfo_2("张三", age: 20);
  print(res);

  /**
   * 函数参数
   * 将函数当成参数传递个另一个函数
   */
}
