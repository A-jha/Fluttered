import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Icon(Icons.home),
              flex: 1,
            ),
            Expanded(
              child: Text(
                "Home",
                textAlign: TextAlign.center,
              ),
              flex: 1,
            ),
            Expanded(
              child: Icon(Icons.bar_chart),
              flex: 1,
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(11, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                print("button pressed");
                Navigator.pushNamed(context, "/signup");
              },
              child: Text("Sign-Up"),
            ),
            ElevatedButton(
              onPressed: () {
                print("button pressed");
                Navigator.pushNamed(context, "/login");
              },
              child: Text("LogIn"),
            ),
            ElevatedButton(
              onPressed: () {
                print("button pressed");
                Navigator.pushNamed(context, "/calculator");
              },
              child: Text("Calculator"),
            ),
          ],
        ),
      ),
    );
  }
}
