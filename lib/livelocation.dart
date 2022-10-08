import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:driver_app/currentlocation.dart';
import 'package:driver_app/livelocation.dart';

class liveLocation extends StatefulWidget {
  const liveLocation({Key? key}) : super(key: key);

  @override
  State<liveLocation> createState() => _liveLocationState();
}

class _liveLocationState extends State<liveLocation> {
  late GoogleMapController googleMapController;
  static const CameraPosition intitialCameraPositon =
      CameraPosition(target: LatLng(8.9806034, 38.7577605), zoom: 10);
  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent.shade400,
        title: Text('Live Location'),
      ),
      body: Column(children: [
        Expanded(
          child: GoogleMap(
            mapType: MapType.normal,
            markers: markers,
            zoomControlsEnabled: false,
            initialCameraPosition: intitialCameraPositon,
            onMapCreated: (GoogleMapController controller) {
              googleMapController = controller;
            },
          ),
        )
      ]),
    );
  }
}
