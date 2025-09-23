part of 'log_in_cubit.dart';

@immutable
sealed class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInLaoding extends LogInState {}

final class LogInSucess extends LogInState {
  final UserEntity userEntity;

  LogInSucess({required this.userEntity});
}

final class LogInFailuer extends LogInState {
  final String errorMessage;

  LogInFailuer({required this.errorMessage});
}
