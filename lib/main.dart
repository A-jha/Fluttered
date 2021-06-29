import 'package:flut_1/CRUD/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: Home(),
    ),
  );
}

//custom stateless widget
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String bodyText = "Hi There";
  int counter = 0;
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
      body: MyFavQuotes(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
