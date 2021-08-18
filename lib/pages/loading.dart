import 'package:flutter/material.dart';
import "package:worldtime/services/chooseRegion.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class ScreenArguments {
  final String time;
  ScreenArguments(this.time);
}

class _LoadingState extends State<Loading> {
  String time = "Loading . . .";

  @override
  void initState() {
    super.initState();
    // setupWoldTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(.1),
      body: Container(
        child: SpinKitWave(
          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: index.isEven ? Colors.red : Colors.green,
              ),
            );
          },
        ),
      ),
    );
  }
}
