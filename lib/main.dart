// import 'dart:js';

import 'package:driver_app/signin.dart';
import 'package:flutter/material.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/livelocation.dart';
import 'package:driver_app/homescreen.dart';
import 'package:driver_app/login.dart';
import 'package:driver_app/detail.dart';
import 'package:driver_app/rating.dart';
import 'package:driver_app/my trip.dart';
import 'package:driver_app/account.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => homeScreen(),
      '/location': (context) => liveLocation(),
      '/clocation': (context) => currentLocation(),
      '/login': (context) => login(),
      '/signin': (context) => signin(),
      '/cdetail': (context) => cDetail(),
      '/rating': (context) => Rating(),
      '/mytrip': (context) => myTrip(),
      '/account': (context) => Account(),
    },
  ));
}
