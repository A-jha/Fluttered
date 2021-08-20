import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    dynamic data =
        ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("${data.location}"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(//TODO:love you life
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, "/choose")},
                  child: Text("Choose Locations")),
              SizedBox(
                height: 20,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                elevation: 10,
                color: Colors.teal,
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_city,
                        color: Colors.yellowAccent,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${data.location}",
                        style: TextStyle(
                            height: 2,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${data.time}",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${data.date}",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Card(
                  child : Container(
                    constraints: BoxConstraints(minWidth: 250),
                    padding:EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        Text("Days of the Year",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                        Text("${data.yday}",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),),
                  Card(
                    child : Container(
                      constraints: BoxConstraints(minWidth: 250),
                      padding:EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: Column(
                        children: [
                          Text("No of Weeks",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                          Text("${data.numofday}",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),),
                  Card(
                    child : Container(
                      constraints: BoxConstraints(minWidth: 250),
                      padding:EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: Column(
                        children: [
                          Text("Days of the Week",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                          Text("${data.wday}",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),),

                  ],),
            ],
          ),
        ),
      ),
    );
  }
}
