import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/login.dart';
import 'package:driver_app/rating.dart';
import 'package:driver_app/my trip.dart';
import 'package:driver_app/account.dart';
// import 'dart:js';

class currentLocation extends StatefulWidget {
  const currentLocation({Key? key}) : super(key: key);

  @override
  State<currentLocation> createState() => _currentLocationState();
}

class _currentLocationState extends State<currentLocation> {
  late GoogleMapController googleMapController;
  static const CameraPosition intitialCameraPositon =
      CameraPosition(target: LatLng(8.9806034, 38.7577605), zoom: 10);
  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.amberAccent[400],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 750,
                child: GoogleMap(
                    initialCameraPosition: intitialCameraPositon,
                    markers: markers,
                    zoomControlsEnabled: false,
                    mapType: MapType.normal,
                    onMapCreated: (GoogleMapController controller) {
                      googleMapController = controller;
                    }),
              ),
              BottomNavigationBar(
                elevation: 20,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.grey.shade600,
                selectedFontSize: 13,
                unselectedFontSize: 13,
                selectedLabelStyle:
                    TextStyle(color: Colors.amberAccent.shade400),
                unselectedLabelStyle: TextStyle(color: Colors.grey.shade200),
                iconSize: 30,
                items: [
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: InkWell(
                      child: Icon(
                        Icons.car_rental_rounded,
                        color: Colors.amberAccent.shade400,
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
                        color: Colors.amberAccent.shade400,
                      ),
                      onTap: () {},
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Rating",
                    icon: InkWell(
                      child: Icon(
                        Icons.star_border_rounded,
                        color: Colors.amberAccent.shade400,
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
                        color: Colors.amberAccent.shade400,
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
        ),
      ),
      floatingActionButton: Container(
        height: 40,
        width: 65,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                backgroundColor: Colors.grey[200],
                onPressed: (() async {
                  Position position = await _determinePositon();
                  googleMapController.animateCamera(
                      CameraUpdate.newCameraPosition(CameraPosition(
                          target: LatLng(position.latitude, position.longitude),
                          zoom: 15)));
                  markers.clear();
                  markers.add(Marker(
                      markerId: const MarkerId('current location'),
                      position: LatLng(position.latitude, position.longitude)));
                  // setState(() {

                  // });
                }),
                label: const Text(''),
                icon: Icon(
                  Icons.location_pin,
                  color: Colors.amberAccent[400],
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Position> _determinePositon() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('location services are disabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('permission denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error('location permisson are permanently denied');
    }
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }
}
