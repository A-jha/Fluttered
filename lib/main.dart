import 'package:flut_1/WORLD-TIME-APP/pages/choose_location.dart';
import 'package:flut_1/WORLD-TIME-APP/pages/home.dart';
import 'package:flut_1/WORLD-TIME-APP/pages/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Loading(),
        "/home": (context) => Home(),
        "/location": (context) => ChooseLocation(),
      },
    ));
