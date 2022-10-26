import 'dart:async';

import 'package:flutter/material.dart';
import 'package:driver_app/login.dart';
import 'package:driver_app/homescreen.dart';
import 'package:driver_app/signin.dart';
import 'package:driver_app/currentlocation.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent.shade400,
          title: Text('MY ACCOUNT',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        body: SafeArea(
            child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 18),
                children: [
              Column(
                children: [
                  SizedBox(height: 80),
                  Container(
                      height: 150, child: Image.asset('lib/images/driver.png')),
                  SizedBox(height: 20),
                  Text(
                    'LOG IN',
                    style: TextStyle(
                        color: Colors.indigoAccent[400],
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.indigoAccent.shade400),
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade900),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.indigoAccent.shade400))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                style: TextStyle(color: Colors.indigoAccent.shade400),
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade900),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.indigoAccent.shade400))),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  ButtonTheme(
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: RaisedButton(
                        color: Colors.indigoAccent[400],
                        onPressed: () {
                          Navigator.pushNamed(context, '/util');
                        },
                        child: Text('log in'),
                      ),
                    ),
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: Text('Register',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.indigoAccent[400])),
                    onTap: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                  )
                ],
              )
            ])));
  }
}
