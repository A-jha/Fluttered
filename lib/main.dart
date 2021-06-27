import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './mini-projects/IdCard.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: Home(),
    ),
  );
}

void func(String a) {
  print(a);
}

//custom stateless widget
class Home extends StatelessWidget {
  final String bodyText = "Hi There";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.home,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 75.0,
        toolbarOpacity: .8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.zero, top: Radius.circular(50)),
        ),
      ),
      body: IdCard(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => func(bodyText),
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
