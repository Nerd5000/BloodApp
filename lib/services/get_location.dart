import 'package:geolocator/geolocator.dart';

class GetLocation {
  GetLocation() {
    // todo get user permission for location
  }

  final Geolocator _geolocator = Geolocator();
  Position _currentPosition;

  List<double> getCurrentLocation() {
    _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      _currentPosition = position;
    }).catchError((e) {
      return [0, 0];
    });
    return [_currentPosition.latitude, _currentPosition.longitude];
  }

  Future<List<String>> getAddressFromLatLng(List<double> list) async {
    try {
      List<Placemark> p =
          await _geolocator.placemarkFromCoordinates(list[0], list[1]);

      Placemark place = p[0];

      return ['${place.country}', '${place.locality}', '${place.postalCode}'];
    } catch (e) {
      return [e];
    }
  }
}
