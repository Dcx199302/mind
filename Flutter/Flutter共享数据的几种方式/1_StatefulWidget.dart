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
