import 'package:geolocator/geolocator.dart';

class Location {
  static Future<Position> getCurrentLocaton() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    return position;
  }
}
