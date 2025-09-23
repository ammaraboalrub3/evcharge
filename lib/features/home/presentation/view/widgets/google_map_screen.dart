import 'package:evcharge/features/home/domain/entities/stations_entity.dart'
    show StationsEntity;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatelessWidget {
  const GoogleMapScreen({
    super.key,
    required this.stationsEntity,
  });

  final StationsEntity stationsEntity;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        markers: {
          Marker(
              markerId: MarkerId("1"),
              draggable: true,
              position: LatLng(
                double.parse(stationsEntity.lat!),
                double.parse(stationsEntity.long!),
              ))
        },
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(
            zoom: 18,
            target: LatLng(
              double.parse(stationsEntity.lat!),
              double.parse(stationsEntity.long!),
            )));
  }
}
