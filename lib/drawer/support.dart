import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  String dropdownvalue = 'other';
  var items = [
    'User Attitude',
    'Item Lost',
    'Compliant',
    'Suggestion',
    'other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SUPPORT'),
          backgroundColor: Colors.indigoAccent[400],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Column(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('lib/images/user1.png')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'user',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    child: DropdownButton(
                      isExpanded: true,
                      elevation: 3,
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Feedback',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: TextField(
                        decoration: InputDecoration(
                      labelText: 'Write your feedback here',
                    )),
                  ),
                  SizedBox(
                    height: 230,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.telegram_rounded),
                        Text('Tesafari'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.facebook_rounded),
                        Text('Tesafari'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.call),
                        Text('0989623924')
                      ],
                    ),
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
