import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void asyncCall() async {
    await Future.delayed(Duration(seconds: 1), () {
      print("hi");
    });
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  void initState() {
    super.initState();
    asyncCall();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Loading . . ."),
      ),
    );
  }
}
