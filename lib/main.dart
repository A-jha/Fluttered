import 'package:flutter/material.dart';
import 'package:test1/Apps/Calculator/HomePage.dart';
import 'package:test1/Apps/FetchApi/Fetch.dart';
import 'package:test1/Forms/Login.dart';
import "package:test1/Loading.dart";
import "package:test1/Home.dart";
import 'Forms/SignUp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Loading(),
        "/home": (context) => Home(),
        "/signup": (context) => SignUp(),
        "/login": (context) => LogIn(),
        "/calculator": (context) => Calculator(),
        "/fetch":(context)=>FetchData(),
      },
    ),
  );
}
