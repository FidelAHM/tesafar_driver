// import 'dart:js';

// import 'dart:js';

// import 'dart:js';

// import 'dart:js';

import 'package:driver_app/signin.dart';
import 'package:driver_app/utils/profile.dart';
import 'package:flutter/material.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/livelocation.dart';
import 'package:driver_app/homescreen.dart';
import 'package:driver_app/login.dart';
import 'package:driver_app/detail.dart';
import 'package:driver_app/utils/profile.dart';
import 'package:driver_app/utils/revenue.dart';
import 'package:driver_app/utils/utils.dart';
import 'package:driver_app/utils/trips.dart';
import 'package:driver_app/drawer/rating.dart';
import 'package:driver_app/drawer/drawer.dart';
import 'package:driver_app/drawer/payment.dart';
import 'package:driver_app/drawer/settings.dart';
import 'package:driver_app/drawer/support.dart';

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
      '/trip': (context) => Trip(),
      '/profile': (context) => Profile(),
      '/revenue': (context) => Revenue(),
      '/llocation': (context) => liveLocation(),
      '/util': (context) => Util(),
      '/payment': (context) => Payment(),
      '/rating': (context) => Rating(),
      '/settings': (context) => Settings(),
      '/support': (context) => Support(),
    },
  ));
}
