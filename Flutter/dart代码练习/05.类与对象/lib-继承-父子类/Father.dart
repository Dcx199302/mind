// 1.父类
class Father {
  String name = "刘备";
  num _money = 10000000;

  say() {
    print('我是$name');
  }

  // 获取返回值的getter方法
  get getMoney {
    print(_money);
    return _money;
  }

  String job;
  // 构造函数
  Father(this.job);

  // origin 起源，起因；出身，血统
  Father.origin(this.job);
}
