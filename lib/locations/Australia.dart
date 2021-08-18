import 'package:flutter/material.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

class Australia extends StatefulWidget {
  const Australia({Key? key}) : super(key: key);

  @override
  _AustraliaState createState() => _AustraliaState();
}

class _AustraliaState extends State<Australia> {
  List<dynamic> allRegion = ["hi"];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Australia"),
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
