// 声明函数，不需要function关键字
void printInfo() {
  print("hello wrold");
}

// 定义指定类型返回值的函数
int getNumber() {
  return 1;
}

void main() {
// 调用函数
  printInfo();
  print(getNumber());

// 匿名函数
  var myPrint = (e) {
    print(e);
  };

  myPrint("传入的值");

  // 例子：
  List fruits = ["苹果", "香蕉", "猕猴桃"];
  // fruits.forEach((element) {});    -- (element){} 就是一个匿名函数
  // 使用自定义的匿名函数
  fruits.forEach(myPrint);

  // 箭头函数. dart箭头函数里面不能写分号 ，且箭头函数里只能写一行
  fruits.forEach((element) => {print(element)});

// 立即执行函数
  ((int n) {
    print(n);
  })(17);
}
