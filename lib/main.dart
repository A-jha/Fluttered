import 'package:flutter/material.dart';
import 'package:worldtime/pages/home.dart';
import "package:worldtime/pages/choose_location.dart";
import 'package:worldtime/pages/loading.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => Home(),
          "/choose": (context) => ChooseLocation(),
          "/loading": (context) => Loading(),
        }));
