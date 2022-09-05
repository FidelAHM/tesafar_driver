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
  void initstate() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent[400],
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              children: [
                Container(
                    height: 400, child: Image.asset('lib/images/distance.png')),
                SizedBox(height: 50),
                Text(
                  'TESAFARI',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "DRIVER",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 100),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Colors.indigoAccent[400]),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text('Start'))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
