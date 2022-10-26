import 'package:flutter/material.dart';
import 'package:driver_app/utils/profile.dart';
import 'package:driver_app/utils/utils.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent.shade400,
          title: Text(
            'MY ACCOUNT',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
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
                  style: TextStyle(color: Colors.indigoAccent.shade400),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.grey.shade200)),
                  height: 60,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.phone_android_rounded,
                        color: Colors.indigoAccent.shade400,
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
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.grey.shade200)),
                  height: 60,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.email_rounded,
                        color: Colors.indigoAccent.shade400,
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
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.grey.shade200)),
                  height: 60,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.car_rental_rounded,
                        color: Colors.indigoAccent.shade400,
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
                                Colors.indigoAccent.shade400)),
                        onPressed: () {},
                        child: Text('Sign out'))),
              ],
            )));
  }
}
