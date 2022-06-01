/**
 * 接口实现： implements
 * 一个类可以实现多个接口，用逗号分隔、
 * 接口可以看成一个个小零件。类实现接口 - 就相当于 - 组装零件
 * 普通类实现接口后，必须-重写-接口中所有的属性和方法
 */

// 手机的处理器 Processor ： 处理器
abstract class Processor {
  late String cores; //内核 2核、4核
  arch(String name); //芯片制程 7nm 、5nm

}

// 手机的摄像头
abstract class Camera {
  late String resolution; //分辨力 1000万、3000万
  brand(String name); //brand：品牌： 三星、徕卡、蔡司
}

// 通过普通类实现接口
class Phone implements Processor, Camera {
  @override
  arch(String name) {
    print("芯片制程：" + name);
  }

  @override
  brand(String name) {
    print("相机品牌" + name);
  }

  @override
  String cores;

  @override
  String resolution;

  Phone(this.cores, this.resolution);
}

void main() {
  Phone p = new Phone("16核", "3000万");
  p.arch("5nm");
  p.brand("徕卡");
}
