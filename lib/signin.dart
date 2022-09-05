import 'package:flutter/material.dart';
import 'package:driver_app/signin.dart';
import 'package:driver_app/login.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGISTER"),
          backgroundColor: Colors.indigoAccent[400],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: CircleAvatar(
                      radius: 80.0,
                      backgroundColor: Colors.grey[300],
                      child: imageFile == null
                          ? CircleAvatar(
                              radius: 80.0,
                              backgroundColor: Colors.grey[300],
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 50,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.image,
                                        color: Colors.indigoAccent[400],
                                      ),
                                      onTap: () {
                                        _getFromGallery();
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.indigoAccent[400],
                                      ),
                                      onTap: () {
                                        _getFromCamera();
                                      },
                                    )
                                  ],
                                ),
                              ),
                            )
                          : CircleAvatar(
                              radius: 80.0,
                              backgroundImage: FileImage(
                                imageFile!,
                              ))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'REGISTER',
                style: TextStyle(fontSize: 20, color: Colors.indigoAccent[400]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                          filled: true),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                          filled: true),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        labelText: 'New Password',
                        labelStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                        ),
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          labelText: 'Comfirm Password',
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                          filled: true),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  ButtonTheme(
                      child: SizedBox(
                        height: 50,
                        width: 150,
                        child: RaisedButton(
                          color: Colors.indigoAccent[400],
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text('Continue'),
                        ),
                      ),
                      height: 50,
                      disabledColor: Colors.indigoAccent[400]),
                ],
              )
            ],
          ),
        ));
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 150,
      maxHeight: 150,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 80,
      maxHeight: 80,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
