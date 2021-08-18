import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location; // location name for UI
  String time;
  String endpoint; //for API endpoint
  int dayOfYear;
  int dayOfWeek;
  int weekNumber;

  WorldTime(
      {this.location = "Kolkata",
      this.endpoint = "Asia/Kolkata",
      this.time = "",
      this.dayOfYear = 228,
      this.dayOfWeek = 1,
      this.weekNumber = 33});

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
      time = now.toString();
    } catch (e) {
      print("some error $e");
    } finally {
      client.close();
    }
  }
}
