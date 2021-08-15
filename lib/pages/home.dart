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
          title: Text("WorldTime"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(
              child: TextButton(
                  onPressed: () =>
                      {Navigator.pushReplacementNamed(context, "/choose")},
                  child: Container(
                    color: Colors.amber,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    child: Text(
                      "Choose A Location",
                      style: TextStyle(
                        backgroundColor: Colors.amber,
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}
