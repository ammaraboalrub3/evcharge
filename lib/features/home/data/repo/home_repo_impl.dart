import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:evcharge/core/errors/failuer.dart';
import 'package:evcharge/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:evcharge/features/home/domain/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(this.homeRemoteDataSource);

  @override
  Future<Either<Failuer, List<StationsEntity>>> fetchStations() async {
    try {
      List<StationsEntity> stations =
          await homeRemoteDataSource.fetchStations();
      return right(stations);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      } else {
        return left(ServerFailuer(errorMessage: e.toString()));
      }
    }
  }
}
