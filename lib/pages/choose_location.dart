import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    // dynamic data =
    //     ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("WorldTime"),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: continentEndPoints.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              child: Card(
                margin: EdgeInsets.all(20),
                child: ListTile(
                  selectedTileColor: Colors.amber,
                  onTap: () {
                    print(continentEndPoints[index]);
                    Navigator.pushNamed(context, "/dataloading",
                        arguments: continentEndPoints[index]);
                  },
                  title: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(continentEndPoints[index])),
                ),
              ),
            );
          },
        ));
  }
}

List<String> continentEndPoints = [
  "Africa",
  "America",
  "Antarctica",
  "Asia",
  "Australia",
  "Europe",
  "Pacific",
];
