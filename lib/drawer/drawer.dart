import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:driver_app/utils/profile.dart';
import 'package:driver_app/drawer/rating.dart';
import 'package:driver_app/drawer/drawer.dart';
import 'package:driver_app/drawer/payment.dart';
import 'package:driver_app/drawer/settings.dart';
import 'package:driver_app/drawer/support.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.grey[300],
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('lib/images/user1.png'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    child: Text(
                      'user',
                      style: TextStyle(
                        color: Colors.indigoAccent[400],
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.settings, color: Colors.indigoAccent[400]),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    })
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.money, color: Colors.indigoAccent[400]),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    child: Text(
                      'Payment',
                      style: TextStyle(fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/payment');
                    })
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.star_rate, color: Colors.amberAccent[400]),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    child: Text(
                      'Rating',
                      style: TextStyle(fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/rating');
                    })
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.support_agent_rounded,
                    color: Colors.indigoAccent[400]),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    child: Text(
                      'Support',
                      style: TextStyle(fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/support');
                    })
              ],
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Share.share(
                          "https://play.google.com/store/apps/details?id=com.tesafari.testapp");
                    },
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.indigoAccent[400],
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Share',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 270,
          ),
          Text('All rights reserved '),
          Text('TESAFARI')
        ]),
      ),
    );
  }
}
