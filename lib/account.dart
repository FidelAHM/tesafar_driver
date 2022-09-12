import 'package:flutter/material.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/account.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'MY ACCOUNT',
            style: TextStyle(
              color: Colors.amberAccent.shade400,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey.shade700,
                backgroundImage: AssetImage('lib/images/user.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'User 001',
              style: TextStyle(color: Colors.amberAccent.shade400),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  border: Border.all(color: Colors.grey.shade900)),
              height: 60,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.phone_android_rounded,
                    color: Colors.amberAccent.shade400,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '0900909090',
                    style: TextStyle(fontSize: 20),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  border: Border.all(color: Colors.grey.shade900)),
              height: 60,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.amberAccent.shade400,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('driver@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ))
                ]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  border: Border.all(color: Colors.grey.shade900)),
              height: 60,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.car_rental_rounded,
                    color: Colors.amberAccent.shade400,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Tesla 00001',
                    style: TextStyle(fontSize: 20),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.amberAccent.shade400)),
                    onPressed: () {},
                    child: Text('Sign out')))
          ]),
        ));
  }
}
