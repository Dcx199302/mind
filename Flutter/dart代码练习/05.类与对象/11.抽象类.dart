/**
 * 
 * 抽象类： abstract   必须使用关键字 abstract 声明
 * 抽象类中、可以有抽象方法、也可以没有（通常都有）
 */
abstract class Phone {
  //抽象类 Phone
  // 声明抽象方法
  void processor(); //手机的处理器
  void camera(); //手机的摄像头

  // 抽象类中的普通方法
  void info() {
    print("我是抽象类中的一个普通方法");
  }
}

/**
 * 普通类 ： 小米 ---------------------------------------------------
 */
class Xiaomi extends Phone {
  // 1. 普通类-继承了 - 抽象类，就必须实现抽象类中的所有的抽象方法
  @override
  void processor() {
    print("小米使用：骁龙888处理器");
  }

  @override
  void camera() {
    print("三星摄像头");
  }

  // void abstractFun();  //普通类中不能有抽象方法
}

/**
 * 普通类 ： 华为 --------------------------------------------------
 */
class Huawei extends Phone {
  // 1. 普通类-继承了 - 抽象类，就必须实现抽象类中的所有的抽象方法
  @override
  void processor() {
    print("麒麟990");
  }

  @override
  void camera() {
    print("莱卡三摄");
  }
}

void main() {
  // 抽象类不能被实例化
  // var p1 = new Phone();  // 错误

  /**
   * 普通类 - 小米
   */
  Xiaomi m = new Xiaomi();
  m.processor();
  m.camera();
  m.info(); //继承过来的

  Huawei h = new Huawei();
  h.processor();
  h.camera();
  h.info(); //继承过来的
}
