import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/livelocation.dart';

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
          color: Colors.indigoAccent[400],
        ),
        actions: [
          InkWell(
              child: Icon(Icons.location_city_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/llocation');
              }),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 650,
                child: GoogleMap(
                    initialCameraPosition: intitialCameraPositon,
                    markers: markers,
                    zoomControlsEnabled: false,
                    mapType: MapType.normal,
                    onMapCreated: (GoogleMapController controller) {
                      googleMapController = controller;
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 15,
              ),
              Container(
                width: 400,
                height: 140,
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
                child: Center(child: Text('No Request for now')),
              )
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
                  color: Colors.indigoAccent[400],
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
