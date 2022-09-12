import 'package:flutter/material.dart';
import 'package:driver_app/signin.dart';
import 'package:driver_app/login.dart';
import 'package:image_picker/image_picker.dart';
import 'package:driver_app/detail.dart';
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "REGISTER",
            style: TextStyle(color: Colors.amberAccent.shade400),
          ),
          backgroundColor: Colors.black,
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
                              ),
                            )
                          : CircleAvatar(
                              radius: 80.0,
                              backgroundImage: FileImage(
                                imageFile!,
                              ))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: Icon(
                      Icons.image,
                      color: Colors.amberAccent[400],
                      size: 30,
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
                      color: Colors.amberAccent[400],
                      size: 30,
                    ),
                    onTap: () {
                      _getFromCamera();
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.amberAccent.shade400),
                      decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade900),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.amberAccent.shade400))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.amberAccent.shade400),
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade900),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.amberAccent.shade400))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.amberAccent.shade400),
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'New Password',
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade900),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.amberAccent.shade400))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.amberAccent.shade400),
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Comfirm Password',
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade900),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.amberAccent.shade400))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Continue',
                    style:
                        TextStyle(color: Colors.amberAccent[400], fontSize: 15),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Icon(
                      Icons.arrow_right_alt_rounded,
                      size: 30,
                      color: Colors.amberAccent.shade400,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/cdetail');
                    },
                  )
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
