import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Position location;

  @override
  void initState() {
    super.initState();
    getPosition();
  }

  void getPosition() async {
    Position currentLocation = await Location.getCurrentLocaton();
    setState(() {
      location = currentLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
