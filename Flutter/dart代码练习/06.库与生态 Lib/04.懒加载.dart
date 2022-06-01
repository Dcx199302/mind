// 正常加载
// import '03_lib/fucntion.dart' as func;

// 延迟加载
import '03_lib/fucntion.dart' deferred as func;

Future greet() async {
  await func.loadLibrary();
  func.f1();
}

void main() {
  print("hello world");
  // 延迟加载的时候这样不能调用的
  func.f1();

  // 这样就能成功调用懒加载文件中的方法
  greet();
}
