import 'package:evcharge/core/service/location_services.dart';
import 'package:evcharge/core/service/open_map_app.dart';

class Maps {
  static Future<void> openMap(String? lat, String? long) async {
    final locationServices = LocationServices();

    await locationServices.checkAndRequestLocationScervice();
    final hasPermission =
        await locationServices.checkAndRequestLocationPermission();

    if (hasPermission && lat != null && long != null) {
      final latitude = double.tryParse(lat);
      final longitude = double.tryParse(long);

      if (latitude != null && longitude != null) {
        OpenMap().openMap(latitude, longitude);
      }
    }
  }
}
