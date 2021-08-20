import 'package:flutter/material.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

class Asia extends StatefulWidget {
  const Asia({Key? key}) : super(key: key);

  @override
  _AsiaState createState() => _AsiaState();
}

class _AsiaState extends State<Asia> {
  List<dynamic> allRegion = ["hi"];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Asia"),
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
