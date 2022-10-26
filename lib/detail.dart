import 'package:flutter/material.dart';
import 'package:driver_app/signin.dart';
import 'package:driver_app/detail.dart';
import 'package:driver_app/currentlocation.dart';

class cDetail extends StatefulWidget {
  const cDetail({Key? key}) : super(key: key);

  @override
  State<cDetail> createState() => _cDetailState();
}

class _cDetailState extends State<cDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'CAR DETAILS',
          style: TextStyle(color: Colors.indigoAccent.shade400),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('lib/images/driver.png')),
              SizedBox(
                height: 30,
              ),
              Text(
                'Enter car details',
                style: TextStyle(
                    color: Colors.indigoAccent.shade400, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.indigoAccent.shade400),
                decoration: InputDecoration(
                    labelText: 'Car Model',
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
                style: TextStyle(color: Colors.indigoAccent.shade400),
                decoration: InputDecoration(
                    labelText: 'Car Number',
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
                style: TextStyle(color: Color.fromARGB(255, 152, 116, 0)),
                decoration: InputDecoration(
                    labelText: 'Car Color',
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
                height: 100,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/util');
                    },
                    child: Text('Register'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.indigoAccent.shade400))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
