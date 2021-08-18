import 'package:flutter/material.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

class Europe extends StatefulWidget {
  const Europe({Key? key}) : super(key: key);

  @override
  _EuropeState createState() => _EuropeState();
}

class _EuropeState extends State<Europe> {
  List<dynamic> allRegion = ["hi"];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Europe"),
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
