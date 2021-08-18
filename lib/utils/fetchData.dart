import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchData(String url) async {
  var _url = Uri.parse(url);
  //setup hhtp instance
  var client = http.Client();
  try {
    http.Response response = await client.get(_url);
    List<dynamic> data = jsonDecode(response.body);
    return data;
  } catch (e) {
    print(e);
    return ["Sorry", "No Data Found"];
  }
}
