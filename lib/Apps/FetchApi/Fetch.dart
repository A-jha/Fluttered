import "package:flutter/material.dart";
import 'package:test1/Apps/FetchApi/GetData.dart';
class FetchData extends StatefulWidget {
  const FetchData({Key? key}) : super(key: key);

  @override
  _FetchDataState createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  String url = "https://reqres.in/api/users/2";
  String email = "";
  String firstName = "";
  String lastName = "";
  String imgUrl ="";
  String resStatus = "";
  void setUpData()async{
    GetData instance = GetData(endpoint: 3);
    await instance.getData();
     email = instance.email;
    firstName = instance.firstName;
    lastName = instance.lastName;
    imgUrl = instance.imgUrl;
    print(imgUrl);
    resStatus = instance.resStatus;
  }
  @override
  void initState(){
    super.initState();
    setUpData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FETCH-API"),
        centerTitle: true,
      ),
      body:
         Card(
           child: Container(
             padding: EdgeInsets.all(30),
          child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl,scale: 1),
                  radius: 40,

                ),
                Text(firstName),
                Text(lastName),
                Text(email),
                Text(resStatus)
              ],
          ),
        ),
      ),
    );
  }
}
