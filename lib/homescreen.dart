import 'dart:async';

import 'package:driver_app/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:driver_app/utils/utils.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        backgroundColor: Colors.indigoAccent.shade400,
        image: Image.asset(
          'lib/images/distance.png',
          width: 200,
          height: 200,
        ),
        photoSize: 100,
        seconds: 5,
        title: Text(
          'TESAFARI-DRIVER',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        loaderColor: Colors.white,
        navigateAfterSeconds: login());
  }
}
