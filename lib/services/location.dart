import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      // TODO
      print(e);
    }
  }
}
