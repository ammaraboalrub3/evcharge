import 'dart:convert';

import 'package:evcharge/core/service/api_service.dart';
import 'package:evcharge/features/home/data/model/station_model.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<StationsEntity>> fetchStations();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<StationsEntity>> fetchStations() async {
    final data = await apiService.get(
      endPoint: "get_stations?user_lat=123&user_long=123",
    );

    if (data is List) {
      return data
          .map((stationJson) =>
              StationModel.fromJson(stationJson as Map<String, dynamic>))
          .toList();
    }

    if (data is String) {
      final decoded = jsonDecode(data);
      if (decoded is List) {
        return decoded
            .map((stationJson) =>
                StationModel.fromJson(stationJson as Map<String, dynamic>))
            .toList();
      }
    }
    throw Exception("Unexpected response format: ${data.runtimeType}");
  }
}
