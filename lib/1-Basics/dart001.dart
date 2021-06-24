import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.yellow,
        ),
        body: Center(
            child: Text(
          "Hello World",
          style: TextStyle(
            color: Colors.limeAccent,
            fontSize: 15,
          ),
        )),
      ),
    );
  }
}
