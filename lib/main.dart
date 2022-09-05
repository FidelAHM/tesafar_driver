import 'package:driver_app/signin.dart';
import 'package:flutter/material.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/livelocation.dart';
import 'package:driver_app/homescreen.dart';
import 'package:driver_app/login.dart';

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
    },
  ));
}
