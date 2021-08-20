import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:worldtime/services/world_time.dart';

class FetchLoadingHome extends StatefulWidget {
  const FetchLoadingHome({Key? key}) : super(key: key);

  @override
  _FetchLoadingHomeState createState() => _FetchLoadingHomeState();
}

class ScreenArguments {
  final String location;
  final String time;
  final int yday;
  final int wday;
  final int numofday;
  final String date;
  final String day;
  ScreenArguments(this.location, this.time, this.yday, this.wday,this.numofday,this.date, this.day);
}

class _FetchLoadingHomeState extends State<FetchLoadingHome> {
  int x = 4;
  void _fetchDataForHome(String endpoint) async {
    WorldTime instance = WorldTime(endpoint: endpoint);
    await instance.getData();
     Navigator.pushReplacementNamed(
      context,
      "/",
      arguments: ScreenArguments(instance.location, instance.time, instance.dayOfYear, instance.dayOfWeek,instance.weekNumber,instance.date, instance.day),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    if (args == null) {
      _fetchDataForHome("Asia/Kolkata");
    } else {
      _fetchDataForHome(args.toString());
    }
    print(args);
    return Container(
      color: Colors.grey[500],
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
