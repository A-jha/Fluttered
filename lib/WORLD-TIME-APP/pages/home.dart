import 'package:flut_1/WORLD-TIME-APP/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final a = 0;
    //to get the argument sent by loading page
    dynamic data =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    // print(data.time);
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton.icon(
          onPressed: () async {
            dynamic result = await Navigator.pushNamed(context, '/location');
            print(result);
            setState(() {
              data.location = result[''];
            });
          },
          icon: Icon(Icons.edit_location),
          label: Text(""),
        ),
        leadingWidth: 70,
        title: Text(
          "WORLD-TIME",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 300,
                      child: Image.network(
                        "https://source.unsplash.com/random/morning",
                      ),
                    ),
                    Text(
                      "${data.time}",
                      style: TextStyle(fontSize: 30, letterSpacing: 5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "${data.location}",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
