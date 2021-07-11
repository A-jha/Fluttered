import 'package:http/http.dart';
import "dart:convert";

class GetData{
  int id;
  String email;
  String firstName;
  String lastName;
  String imgUrl;
  String resStatus;
  int endpoint =2;
  GetData({this.resStatus="Ok",
    this.id=3,
    this.email="#",
    this.firstName="#",
    this.lastName="#",this.imgUrl="#",this.endpoint = 2});

  Future<void> getData() async{
    try {
      Response response = await get(
          Uri.parse("https://reqres.in/api/users/$endpoint"));
      Map data = jsonDecode(response.body);
      print(data["data"]);
      id = data["data"]["id"];
      email = data["data"]["email"];
      firstName = data["data"]["first_name"];
      lastName = data["data"]["last_name"];
      imgUrl = data["data"]["avatar"];
      resStatus="OK";
    }catch(e){
      print("caught error$e");
      resStatus="Sorry something went wrong try again";
    }
  }
}

