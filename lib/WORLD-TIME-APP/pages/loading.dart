import 'package:flut_1/WORLD-TIME-APP/services/world_time.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class ScreenArguments {
  final String location;
  final String flag;
  final String time;
  ScreenArguments(this.location, this.flag, this.time);
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
    WorldTime instance =
        WorldTime(location: "Delhi", flag: "Delhi.png", url: "Asia/Kolkata");
//we set a Future place holder and now we can use await here
    await instance.getTime();
    print(instance.time);
    //pushreplacement push and remove previous route
    Navigator.pushReplacementNamed(
      context,
      "/home",
      arguments:
          ScreenArguments(instance.location, instance.flag, instance.time),
    );
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitCubeGrid(
        color: Colors.blueGrey,
        size: 80,
      )),
    );
  }
}
