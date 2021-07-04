import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getDataSync() {
    //simulate network request for a user name
    Future.delayed(Duration(seconds: 3), () {
      print("I appeared after 3 sec");
    });
    print("i am in a synchronious code");
  }

  void getDataAsync() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("i am asynchrounious from now every thing after me");
    });

    print("i will be printed after wait of 2 second");
  }

  void getData() async {
    int id = await Future.delayed(Duration(seconds: 2), () {
      return 1;
    });
    print(id);
    String username = await Future.delayed(Duration(seconds: 3), () {
      String newUser = "Avinash";
      return newUser;
    });
    print(username);
    String about = await Future.delayed(Duration(seconds: 2), () {
      return "Tera baap aaya";
    });
    print(about);
  }

  @override
  void initState() {
    super.initState();
    print("state initiated");
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Location",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
