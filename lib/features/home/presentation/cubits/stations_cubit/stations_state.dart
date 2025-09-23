part of 'stations_cubit.dart';

@immutable
abstract class StationsState {}

final class StationsInitial extends StationsState {}

final class StationsLoading extends StationsState {}

final class StationsSuccess extends StationsState {
  final List<StationsEntity> stations;

  StationsSuccess({required this.stations});
}

final class StationsFailure extends StationsState {
  final String errorMess;

  StationsFailure({required this.errorMess});
}
