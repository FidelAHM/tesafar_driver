import 'package:flutter/material.dart';
import 'package:driver_app/homescreen.dart';
import 'package:driver_app/utils/utils.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:driver_app/utils/trips.dart';
import 'package:driver_app/utils/revenue.dart';
import '../drawer/drawer.dart';

class Util extends StatefulWidget {
  const Util({Key? key}) : super(key: key);

  @override
  State<Util> createState() => _UtilState();
}

class _UtilState extends State<Util> {
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'ACTIVITIES',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: MainDrawer(),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Material(
              elevation: 15,
            ),
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.indigoAccent.shade100,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75))
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('lib/images/user.png'),
                    ),
                  ),
                  Text(
                    'Driver-Name',
                    style: TextStyle(fontSize: 20),
                  ),
                  RatingBar(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                          full: const Icon(Icons.star, color: Colors.orange),
                          half: const Icon(
                            Icons.star_half,
                            color: Colors.orange,
                          ),
                          empty: const Icon(
                            Icons.star_outline,
                            color: Colors.orange,
                          )),
                      onRatingUpdate: (value) {
                        setState(() {
                          _ratingValue = value;
                        });
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Material(
                  elevation: 15,
                ),
                InkWell(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.indigoAccent.shade100,
                            blurRadius: 15.0,
                            offset: Offset(0.0, 0.75))
                      ],
                    ),
                    child: Column(children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('lib/images/user1.png'),
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Material(
                  elevation: 15,
                ),
                InkWell(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.indigoAccent.shade100,
                            blurRadius: 15.0,
                            offset: Offset(0.0, 0.75))
                      ],
                    ),
                    child: Column(children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('lib/images/placeholder.png'),
                        ),
                      ),
                      Text(
                        'Trips',
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/trip');
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.indigoAccent.shade100,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75))
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  width: 400,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        'Revenue',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 130,
                          width: 250,
                          child: Image.asset('lib/images/line-graph.png'))
                    ],
                  )),
              onTap: () {
                Navigator.pushNamed(context, '/revenue');
              },
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent.shade400,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.indigoAccent.shade100,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                ),
                child: Center(
                  child: Text(
                    'Any Active Trips',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/clocation');
              },
            )
          ])),
    );
  }
}
