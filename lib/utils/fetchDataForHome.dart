import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map> fetchDataForHome(String url) async {
  var _url = Uri.parse(url);
  //setup hhtp instance
  var client = http.Client();
  try {
    http.Response response = await client.get(_url);
    Map data = jsonDecode(response.body);
    print(data);
    client.close();
    return data;
    //return data;
  } catch (e) {
    print(e);
    return {"Sorry": "No Data Found"};
  }
}
