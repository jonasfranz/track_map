import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

@injectable
class LocationService {
  final Location _location = Location();

  Future<bool> askForPermission() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    permissionGranted = await _location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return false;
    }
    return true;
  }

  Future<LatLng?> findCurrentLocation() async {
    final hasPermission = await askForPermission();
    if (!hasPermission) return null;
    final location = await _location.getLocation();
    return switch (location) {
      LocationData(longitude: final longitude?, latitude: final latitude?) => LatLng(
        latitude,
        longitude,
      ),
      _ => null,
    };
  }
}
