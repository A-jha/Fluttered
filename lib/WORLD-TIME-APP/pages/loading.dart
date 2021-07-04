import 'package:flut_1/WORLD-TIME-APP/services/world_time.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
    WorldTime instance = WorldTime(location: "Delhi", flag: "Delhi.png");
//we set a Future place holder and now we can use await here
    await instance.getTime();
    print(instance.time);
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Laoding",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text(""),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(Icons.home),
                  label: Text(""),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
