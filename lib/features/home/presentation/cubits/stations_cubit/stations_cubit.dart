import 'package:bloc/bloc.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:evcharge/features/home/domain/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'stations_state.dart';

class StationsCubit extends Cubit<StationsState> {
  StationsCubit(this.homeRepo) : super(StationsInitial());
  final HomeRepo homeRepo;

  Future<void> fetchStations() async {
    emit(StationsLoading());

    var result = await homeRepo.fetchStations();
    result.fold(
      (f) {
        emit(StationsFailure(errorMess: f.errorMessage));
      },
      (r) {
        emit(StationsSuccess(stations: r));
      },
    );
  }
}
