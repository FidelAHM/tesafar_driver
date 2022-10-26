import 'package:flutter/material.dart';
import 'package:driver_app/currentlocation.dart';

import 'package:fl_chart/fl_chart.dart';

class Revenue extends StatefulWidget {
  const Revenue({Key? key}) : super(key: key);

  @override
  State<Revenue> createState() => _RevenueState();
}

class _RevenueState extends State<Revenue> {
  DateTime date = DateTime(2022, 10, 21);
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
        actions: [
          InkWell(
            child: Icon(
              Icons.calendar_month_rounded,
              size: 30,
              color: Colors.white,
            ),
            onTap: () async {
              DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2100));
              if (newDate == null) return;
              setState(() {
                date = newDate;
              });
            },
          )
        ],
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
            height: 70,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 400,
            child: LineChart(
              LineChartData(
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(spots: [
                      const FlSpot(0, 1),
                      const FlSpot(1, 3),
                      const FlSpot(2, 10),
                      const FlSpot(3, 7),
                      const FlSpot(4, 12),
                      const FlSpot(5, 13),
                      const FlSpot(6, 17),
                      const FlSpot(7, 15),
                      const FlSpot(8, 20)
                    ])
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
