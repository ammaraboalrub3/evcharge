import 'package:evcharge/features/home/domain/entities/stations_entity.dart';

StationsEntity getDummyStations() {
  return StationsEntity(
      image: "",
      distance: 7.14,
      name: "station",
      lat: "15",
      long: "52",
      adress: "");
}

List<StationsEntity> getDummyEntity() {
  return [
    getDummyStations(),
    getDummyStations(),
    getDummyStations(),
    getDummyStations()
  ];
}
