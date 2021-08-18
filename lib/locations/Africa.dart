import 'package:flutter/material.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

class Africa extends StatefulWidget {
  const Africa({Key? key}) : super(key: key);

  @override
  _AfricaState createState() => _AfricaState();
}

class _AfricaState extends State<Africa> {
  List<dynamic> allRegion = ["hi"];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Africa"),
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
