import 'package:flutter/material.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

class Antarctica extends StatefulWidget {
  const Antarctica({Key? key}) : super(key: key);

  @override
  _AntarcticaState createState() => _AntarcticaState();
}

class _AntarcticaState extends State<Antarctica> {
  List<dynamic> allRegion = ["hi"];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Antarctica"),
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
