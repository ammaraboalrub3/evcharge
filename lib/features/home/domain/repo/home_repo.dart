import 'package:dartz/dartz.dart';
import 'package:evcharge/core/errors/failuer.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<StationsEntity>>> fetchStations();
}
