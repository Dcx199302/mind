### 一、StatefulWidget内部使用数据

```dart
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
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _decrement,
            child: const Text("+"),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("$_num"),
          )
        ],
      ),
    );
  }
}

```



### 二、DataTable 案例展示数据共享

1. 创建InheritedWidget小组件、
2. 用创建的InheritedWidget组件包裹公共的组件、
3. 子组件读取公共数据

```dart
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
          title: const Text("DataTable"),
        ),
        body: const UserList(),
      ),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class User {
  late String name;
  late int age;
  late bool selected;
  User(this.name, this.age, {this.selected = false});
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User> data = [
    User("张三", 18),
    User("李四", 218, selected: true),
    User("王五", 199),
    User("赵六", 106),
  ];

  var _sortAscending = true;

  List<DataRow> _getUserRows() {
    List<DataRow> dataRows = [];
    for (var i = 0; i < data.length; i++) {
      dataRows.add(
        DataRow(
          selected: data[i].selected,
          onSelectChanged: (selected) {
            setState(() {
              data[i].selected = selected!;
            });
          },
          cells: [
            DataCell(Text(data[i].name)),
            DataCell(Text("${data[i].age}")),
            const DataCell(Text("男")),
            const DataCell(Text("--简介--")),
          ],
        ),
      );
    }
    return dataRows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: _sortAscending,
          dataRowHeight: 60,
          horizontalMargin: 20,
          columnSpacing: 100,
          columns: [
            const DataColumn(label: Text("姓名")),
            DataColumn(
              label: const Text("年龄"),
              numeric: true,
              onSort: (int columnIndex, bool asscending) {
                _sortAscending = asscending;
                setState(() {
                  if (asscending) {
                    data.sort((a, b) => a.age.compareTo(b.age));
                  } else {
                    data.sort((a, b) => b.age.compareTo(a.age));
                  }
                });
              },
            ),
            const DataColumn(label: Text("性别")),
            const DataColumn(label: Text("简介")),
          ],
          rows: _getUserRows(),
        ),
      ),
      alignment: Alignment.topCenter,
    );
  }
}

```



### 三、InheritedWidget 实现多级数据共享

```dart
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

```

