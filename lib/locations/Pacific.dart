import 'package:flutter/material.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

class Pacific extends StatefulWidget {
  const Pacific({Key? key}) : super(key: key);

  @override
  _PacificState createState() => _PacificState();
}

class _PacificState extends State<Pacific> {
  List<dynamic> allRegion = ["hi"];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Pacific"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: args.allRegion.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  print("${args.allRegion[index]}");
                  Navigator.pushReplacementNamed(context, "/loadtohome",
                      arguments: args.allRegion[index]);
                },
                title: Text("${args.allRegion[index]}"),
              );
            }));
  }
}
