import 'dart:ui';

import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'PAYMENT ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(child: Text('Coming Soon')),
    );
  }
}
