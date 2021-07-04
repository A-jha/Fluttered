import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // Location name for UI
  String time = ""; //time in that location
  String flag; //url to an asset flag icon
  String url; // location url for API endpoint

  //constructor
  WorldTime({this.location = "", this.flag = "", this.url = "Asia/Kolkata"});
//future is just a place holder like promise
  Future<void> getTime() async {
    //make Request
    Response response =
        await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));

    //print response string
    // print(response.body);
    //jsondecode the data
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['datetime'];
    //String timeZone = data['timezone'];
    String offset = data['utc_offset'];
    //print(offset);
    //remove + from offset

    //hour offset
    int hOffset = int.parse(offset.substring(1, 3));
    //print(hOffset);

    //minute offset
    int mOffset = int.parse(offset.substring(4, 6));
    //print(mOffset);

    //create datetime object
    DateTime now = DateTime.parse(datetime);
    //print(now);

    //add offset to datetime
    now = now.add(Duration(hours: hOffset, minutes: mOffset));
    //print(now);
    //set
    time = now.toString();
  }
}
