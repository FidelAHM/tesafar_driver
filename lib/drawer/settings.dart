import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value = false;
  bool value1 = false;
  bool val1 = true;
  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SETTINGS'),
        backgroundColor: Colors.indigoAccent[400],
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 430,
              height: 700,
              child: Column(
                children: [
                  Text(
                    'Languages',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'አማርኛ ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      SizedBox(width: 210),
                      Checkbox(
                        activeColor: Colors.indigoAccent[400],
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ' English',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      SizedBox(width: 200),
                      Checkbox(
                        activeColor: Colors.indigoAccent[400],
                        value: this.value1,
                        onChanged: (value1) {
                          setState(() {
                            this.value1 = value1!;
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customSwitch('Notification', val1, onChangeFunction1)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangedMethod) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notification',
            style: TextStyle(fontSize: 17),
          ),
          Spacer(),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.indigoAccent[400],
              value: val,
              onChanged: (newValue) {
                onChangedMethod(newValue);
              })
        ],
      ),
    );
  }
}
