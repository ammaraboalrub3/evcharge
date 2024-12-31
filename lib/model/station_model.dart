class StationModel {
  final String id;
  final String stationName;
  final String address;
  final String locationLat;
  final String locationLong;
  final String? stationImage;
  final String distance;

  StationModel({
    required this.id,
    required this.stationName,
    required this.address,
    required this.locationLat,
    required this.locationLong,
    required this.stationImage,
    required this.distance,
  });

  factory StationModel.fromJson(json) {
    return StationModel(
      id: json["station_id"],
      stationName: json["title_en"],
      address: json["address_en"],
      locationLat: json["location_lat"],
      locationLong: json["location_long"],
      stationImage: json["cover"],
      distance: json["distance_from_user"],
    );
  }
}
