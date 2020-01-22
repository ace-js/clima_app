import 'package:geolocator/geolocator.dart';

class Location {
  static void getCurrentLocaton() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
  }
}
