import 'package:flutter/material.dart';
import 'package:driver_app/utils/trips.dart';
import 'package:driver_app/utils/utils.dart';

class Trip extends StatefulWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  State<Trip> createState() => _TripState();
}

class _TripState extends State<Trip> {
  DateTime date = DateTime(2022, 10, 21);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text('TRIPS'),
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
      body: Center(
        child: Text('No trips yet'),
      ),
    );
  }
}
