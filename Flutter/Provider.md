# Provider

- 提供者、提供商、供应商、提供程序

### 准备工作

- 安装Provider

- ```dart
  //pubspec.yaml - 安装插件
  dependencies:
    flutter:
      sdk: flutter
    cupertino_icons: ^1.0.2
    provider: ^6.0.2
        
  在文件中倒入
  // import 'package:provider/provider.dart';
  ```

  



1. *创建数据模型 ( T extends ChangeNotifier )*
2. *创建Provider (注册数据模型)*
   1. *Provider()  -- 不会被要求随着变动而变动*
   2. *ChangeNotifierProvider()  ---随着某些数据改变而被通知更新*
3. *获取数据模型并更新UI*
   1. *获取方式一： 通过上下文（BuildContext）*
   2. *通过静态方法 （ Provider.of<T>(context) )*



### 一、创建数据模型

```dart
//第一步： 创建数据模型

class LikesModle extends ChangeNotifier {
  int _counter = 0;// 定义一个变量
  int get counter => _counter;
    
  incrementCounter() {
    _counter++;// 累加
    notifyListeners(); // 通知UI更新 - 的函数
  }
}

//第三步：

```



### 二、创建Provider （注册数据模型）

```dart
//第二步：创建Provider （注册数据模型）
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context) => LikesModle(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("hello wrold"),
          ),
          body: Home(),
        ),
      ),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

//使用ChangeNotifierProvider - 包裹需要消费数据的Widget顶层
// create 链接数据
//在Home()  下面的所有子元素都可以访问到这个数据了
home: ChangeNotifierProvider(
    create: (BuildContext context) => LikesModle(),
    child: Scaffold(
        appBar: AppBar(title: const Text("hello wrold")),
        body: Home(),
    ),
)
```



### 三、调用数据模型

```dart
//第三步：调用数据模型 - 的 - 数据和方法
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
```

