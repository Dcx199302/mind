import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

///Provider (第三方库)  ：供应者；养家者
/// 1.创建数据模型 ( T extends ChangeNotifier )
/// 2.创建Provider (注册数据模型)
///  2.1 Provider()   -- 不会被要求随着变动而变动
///  2.2 ChangeNotifierProvider()   ---随着某些数据改变而被通知更新
/// 3.获取数据模型并更新UI
///   3.1 获取方式一： 通过上下文（BuildContext）
///   3.2 通过静态方法 （ Provider.of<T>(context) )

// 第一步：.创建数据模型 - 关于点赞的
class LikesModle extends ChangeNotifier {
  // 定义一个变量
  int _counter = 0;

  int get counter => _counter;
  incrementCounter() {
    // 累加
    _counter++;

// 通知UI更新 - 的函数
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 第二步：-创建Provider （注册数据模型）
      // 2.1 使用create 注册数据模型 LikesModle()  -- 注册数据模型的后代 child-s 都可以使用这个数据模型的数据
      home: ChangeNotifierProvider(
        create: (BuildContext context) => LikesModle(),
        child: Scaffold(
          appBar: AppBar(title: const Text("hello wrold")),
          body: const Home(),
        ),
      ),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// 第三步：调用数据模型
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // 使用上下文的方式- 访问自定义方法counter
          Text("${context.watch<LikesModle>().counter}"),
          TextButton(
            // 通过静态方法的方式、访问自定义的 incrementCounter 方法
            onPressed: Provider.of<LikesModle>(context).incrementCounter,
            child: const Icon(Icons.thumb_up),
          )
        ],
      ),
      alignment: Alignment.center,
    );
  }
}
