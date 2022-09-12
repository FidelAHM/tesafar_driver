import 'dart:async';

import 'package:driver_app/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.black,
      image: Image.asset(
        'lib/images/placeholder.png',
        width: 200,
        height: 200,
      ),
      photoSize: 100,
      seconds: 5,
      title: Text(
        'TESAFARI-DRIVER',
        style: TextStyle(color: Colors.amberAccent.shade400, fontSize: 20),
      ),
      loaderColor: Colors.amberAccent.shade400,
      navigateAfterSeconds: login(),
    );
  }
}
