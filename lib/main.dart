import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  //add methods
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(title: "hi"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double widht = 20;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text.rich(TextSpan(
        children: [
          TextSpan(
              text: "beauty",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.amber,
              ))
        ],
      )),
    );
  }
}
