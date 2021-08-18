import 'package:http/http.dart' as http;
import 'dart:convert';

class TimeRegion {
  String region;
  List<dynamic> allEndpoint;
  TimeRegion(this.region, this.allEndpoint);

  Future<void> getRegion() async {
    var url = Uri.parse("https://worldtimeapi.org/api/timezone/$region");
    var client = http.Client();

    try {
      http.Response response = await client.get(url);
      allEndpoint = jsonDecode(response.body);
      print(allEndpoint[1]);
    } catch (e) {
      print("Here is some error : $e");
    } finally {
      print("all good");
    }
  }
}
