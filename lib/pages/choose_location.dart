import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int a = 1;

  //implementing async await future
  void getData() async {
    //simulate a networj request
    await Future.delayed(Duration(seconds: 8), () {
      print("getData after 8 second");
    });
    //simulate another network request
    Future.delayed(Duration(seconds: 5), () {
      print("I am getBio function after 5 sec");
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("state initiated");
  }

  Widget build(BuildContext context) {
    print("buiding called");
    return Scaffold(
        appBar: AppBar(
          title: Text("Choose Location"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text("$a"),
        ),
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: () => {
            setState(() {
              a++;
            })
          },
          child: Icon(
            Icons.add,
          ),
        ));
  }
}
