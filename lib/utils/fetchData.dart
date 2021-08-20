import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
Future<List<dynamic>> fetchData(String url) async {
  var _url = Uri.parse(url);
  //setup hhtp instance
  var client = http.Client();
  try {
    http.Response response = await client.get(_url);
    List<dynamic> data = jsonDecode(response.body);
    client.close();
    return data;
  } catch (e) {
    print(e);
    return ["Sorry", "No Data Found"];
  }
}
