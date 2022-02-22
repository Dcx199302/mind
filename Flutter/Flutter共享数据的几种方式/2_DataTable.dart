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
