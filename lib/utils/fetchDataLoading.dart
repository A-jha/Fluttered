import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:worldtime/utils/fetchData.dart';

class FetchLoading extends StatefulWidget {
  const FetchLoading({Key? key}) : super(key: key);

  @override
  _FetchLoadingState createState() => _FetchLoadingState();
}

class ScreenArguments {
  final List<dynamic> allRegion;
  ScreenArguments(this.allRegion);
}

class _FetchLoadingState extends State<FetchLoading> {
  String args1 = "";
  List<dynamic> allRegion = ["hi"];
  void _fetcData(String endpoint) async {
    allRegion =
        await fetchData("https://worldtimeapi.org/api/timezone/$endpoint");
    //print(allRegion);
    //print("data fetched");
    //print(allRegion.length);
    Navigator.pushReplacementNamed(context, "/${endpoint.toLowerCase()}",
        arguments: ScreenArguments(allRegion));
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    args1 = args.toString();
    _fetcData(args1);
    return Container(
      child: SpinKitFadingFour(
        itemBuilder: (BuildContext context, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.red : Colors.green,
            ),
          );
        },
      ),
    );
  }
}
