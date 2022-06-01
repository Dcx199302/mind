/**
 * 元数据 ： metadata
 * 
 * @deprecated 弃用
 */

class Phone {
  @deprecated
  old_active() {
    //旧版本的-开机方法-会在将来的版本中移除
    print("开机");
  }

  new_active() {
    print("开机");
  }
}

void main() {
  var p = new Phone();
  p.new_active();

  //加了@deprecated 元数据标识的。 会被显示该方法即将被弃用
  p.old_active();
}

// -----------------------------------------------------

/**
 * 继承
 * 根
 */