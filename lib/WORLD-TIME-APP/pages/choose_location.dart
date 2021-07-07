import 'package:flut_1/WORLD-TIME-APP/services/world_time.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  //data
  List<WorldTime> location = [
    WorldTime(
        url: "Europe/London",
        location: "London",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Asia/Tokio",
        location: "Tokio",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "America/New_York",
        location: "NewYork",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "America/Chicago",
        location: "Chicago",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Asia/Kolkata",
        location: "Kolkata",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Europe/Paris",
        location: "Paris",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Australia/Melbourne",
        location: "Melbourne",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Asia/Dubai",
        location: "Dubai",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Asia/Colombo",
        location: "Colombo",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Asia/Bangkok",
        location: "Bangkok",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
    WorldTime(
        url: "Europe/Moscow",
        location: "Moscow",
        flag: "https://source.unsplash.com/collection/190727/1200x400"),
  ];

  void updateTime(index) async {
    WorldTime instance = location[index];
    await instance.getTime();

    Navigator.pop(context, {instance.location, instance.flag, instance.time});
  }

  @override
  void initState() {
    super.initState();
    print("state initiated");
    //getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Location",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: ListView.builder(
          itemCount: location.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                leading: Icon(Icons.location_city),
                title: Text(location[index].location),
              ),
            );
          }),
    );
  }
}
