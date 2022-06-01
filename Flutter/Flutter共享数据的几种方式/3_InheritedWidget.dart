import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello wrold"),
        ),
        body: const Home(),
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

class _HomeState extends State<Home> {
  int _num = 0;

  void _decrement() {
    setState(() {
      _num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShareDataWidget(
      num: _num,
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _decrement,
              child: const Text("+"),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: MyCounter(),
            )
          ],
        ),
      ),
    );
  }
}

// 创建InheritedWidget 共享状态组件
class ShareDataWidget extends InheritedWidget {
  const ShareDataWidget({Key? key, required this.child, required this.num})
      : super(key: key, child: child);

  final Widget child;
  final int num;

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    // 使用InheritedWidget 中的共享数据
    return Text(ShareDataWidget.of(context)!.num.toString());
  }
}
