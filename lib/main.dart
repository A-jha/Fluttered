import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home-page',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Welcome'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
          height: 200,
          padding: EdgeInsets.fromLTRB(2, 2, 0, 5),
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                width: 160.0,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                height: 100,
                color: Colors.orange,
              ),
            ],
          )),
    );
  }
}
