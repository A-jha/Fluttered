import 'dart:js';

import 'package:flutter/material.dart';
import 'package:worldtime/locations/Antarctica.dart';
import 'package:worldtime/locations/Asia.dart';
import 'package:worldtime/locations/Australia.dart';
import 'package:worldtime/locations/Europe.dart';
import 'package:worldtime/locations/Pacific.dart';
import 'package:worldtime/locations/africa.dart';
import 'package:worldtime/locations/america.dart';
import 'package:worldtime/pages/home.dart';
import "package:worldtime/pages/choose_location.dart";
import 'package:worldtime/pages/loading.dart';
import 'package:worldtime/utils/fetchDataLoading.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => Home(),
          "/choose": (context) => ChooseLocation(),
          "/loading": (context) => Loading(),
          "/africa": (context) => Africa(),
          "/america": (context) => America(),
          "/antarctica": (context) => Antarctica(),
          "/asia": (context) => Asia(),
          "/australia": (context) => Australia(),
          "/europe": (context) => Europe(),
          "/pacific": (context) => Pacific(),
          "/dataloading": (context) => FetchLoading(),
        }));
