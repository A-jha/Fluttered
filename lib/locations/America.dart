import 'package:flutter/material.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

class America extends StatefulWidget {
  const America({Key? key}) : super(key: key);

  @override
  _AmericaState createState() => _AmericaState();
}

class _AmericaState extends State<America> {
  List<dynamic> allRegion = ["hi"];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("America"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: args.allRegion.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  print("${args.allRegion[index]}");
                },
                title: Text("${args.allRegion[index]}"),
              );
            }));
  }
}
