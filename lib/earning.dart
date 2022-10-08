import 'package:flutter/material.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/earning.dart';

class Earning extends StatefulWidget {
  const Earning({Key? key}) : super(key: key);

  @override
  State<Earning> createState() => _EarningState();
}

class _EarningState extends State<Earning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'Earnings',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Total Earning',
              style:
                  TextStyle(color: Colors.indigoAccent.shade400, fontSize: 20),
            ),
          ),
          Text(
            "0\$",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total trip',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                SizedBox(
                  width: 200,
                ),
                Text(
                  "0\$",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 560,
          ),
          BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.grey.shade600,
            selectedFontSize: 13,
            unselectedFontSize: 13,
            selectedLabelStyle: TextStyle(color: Colors.indigoAccent.shade400),
            unselectedLabelStyle: TextStyle(color: Colors.grey.shade200),
            iconSize: 30,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: InkWell(
                  child: Icon(
                    Icons.home,
                    color: Colors.indigoAccent.shade400,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
              BottomNavigationBarItem(
                label: "Earning",
                icon: InkWell(
                  child: Icon(
                    Icons.money,
                    color: Colors.indigoAccent.shade400,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/earnings');
                  },
                ),
              ),
              BottomNavigationBarItem(
                label: "Rating",
                icon: InkWell(
                  child: Icon(
                    Icons.star_border_rounded,
                    color: Colors.indigoAccent.shade400,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/rating');
                  },
                ),
              ),
              BottomNavigationBarItem(
                label: "My Account",
                icon: InkWell(
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.indigoAccent.shade400,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/account');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
