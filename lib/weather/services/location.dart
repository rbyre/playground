import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
      
    } catch (e) {
      print(e);
    }
  }
}
