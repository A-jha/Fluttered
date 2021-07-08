import 'package:flutter/material.dart';
import 'package:test1/Forms/Login.dart';
import "package:test1/Loading.dart";
import "package:test1/Home.dart";
import 'Forms/SignUp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/SignUp",
      routes: {
        "/": (context) => Loading(),
        "/home": (context) => Home(),
        "/signup": (context) => SignUp(),
        "/login": (context) => LogIn(),
      },
    ),
  );
}
