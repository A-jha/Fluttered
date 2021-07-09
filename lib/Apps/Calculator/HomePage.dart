import 'dart:ui';

import 'package:flutter/material.dart';

String globaltemp = "";

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  InputNumbers nums = InputNumbers();
  //InputTemp temp = InputTemp();
  String string = "0";
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("</ Calculator />"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
                height: 100,
                width: 600,
                color: Colors.black,
                child: Text(
                  "$string",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
                height: 100,
                width: 600,
                color: Colors.black,
                child: Text(
                  "$result",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  CustomBox(
                      a: nums.a.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(
                      a: nums.b.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(
                      a: nums.c.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(
                      a: nums.j.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                ],
              ),
              Row(
                children: [
                  CustomBox(
                      a: nums.d.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(
                      a: nums.e.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(
                      a: nums.f.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(a: "+", color: Colors.blueGrey),
                ],
              ),
              Row(
                children: [
                  CustomBox(
                      a: nums.g.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(
                      a: nums.h.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(
                      a: nums.i.toString(),
                      temp: string,
                      color: Colors.blueGrey),
                  CustomBox(a: "^", color: Colors.blueGrey),
                ],
              ),
              Row(
                children: [
                  CustomBox(a: "x", temp: string, color: Colors.blueGrey),
                  CustomBox(a: "÷", temp: string, color: Colors.blueGrey),
                  CustomBox(a: "%", temp: string, color: Colors.blueGrey),
                  CustomBox(a: "=", temp: string, color: Colors.blueGrey),
                ],
              )
            ],
          ),
        ));
  }
}

class InputNumbers {
  int a;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;

  InputNumbers(
      {this.a = 1,
      this.b = 2,
      this.c = 3,
      this.d = 4,
      this.e = 5,
      this.f = 6,
      this.g = 7,
      this.h = 8,
      this.i = 9,
      this.j = 0});
}

// ignore: non_constant_identifier_names
Widget CustomBox({String a = "1", color = Colors.amber, String temp = ""}) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {
          temp = temp + a;
          print(temp);
        },
        style: ElevatedButton.styleFrom(
            primary: color, alignment: Alignment.centerLeft),
        child: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(10),
          child: Text(
            "$a",
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.end,
          ),
        ),
      ),
    ),
  );
}

// class InputTemp {
//   String a;
//   String b;
//   String c;
//   String d;
//   String e;
//   String f;
//   String g;
//   String h;
//   String i;
//   String j;

//   InputTemp(
//       {this.a = "",
//       this.b = "",
//       this.c = "",
//       this.d = "",
//       this.e = "",
//       this.f = "",
//       this.g = "",
//       this.h = "",
//       this.i = "",
//       this.j = ""});
// }
