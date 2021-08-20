import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';
import 'dart:async';
class WorldTime {
  String location; // location name for UI
  String time;
  String date;
  String day;
  String endpoint; //for API endpoint
  int dayOfYear;
  int dayOfWeek;
  int weekNumber;

  WorldTime(
      {this.location = "Kolkata",
      this.endpoint = "Asia/Kolkata",
      this.time = "4",
        this.date="",
      this.dayOfYear = 228,
      this.dayOfWeek = 1,
      this.weekNumber = 56,
      this.day = "",});

  Future<void> getData() async {
    var url = Uri.parse("http://worldtimeapi.org/api/timezone/$endpoint");
    var client = http.Client();
    try {
      http.Response response = await client.get(url);
      //print(response.body);
      Map data = jsonDecode(response.body);
      String offset = data['utc_offset'];
      //print(offset);
      DateTime now = DateTime.parse(data['datetime']);
      //print(now);
      now = now.add(Duration(hours: int.parse(offset.substring(1, 3))));
      now = now.add(Duration(minutes: int.parse(offset.substring(4, 6))));
      time = DateFormat.jm().format(now);
      date = DateFormat.yMMMMEEEEd().format(now);
      day = DateFormat.d().format(now);
      dayOfYear = data["day_of_year"];
      dayOfWeek = data["day_of_week"];
      weekNumber = data["week_number"];
      location = data["timezone"];
    } catch (e) {
      print("some error $e");
    } finally {
      client.close();
    }
  }
}
