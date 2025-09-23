part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLaoding extends RegisterState {}

final class RegisterSucess extends RegisterState {
  final UserEntity userEntity;
  final String email;

  RegisterSucess({required this.email, required this.userEntity});
}

final class RegisterFailuer extends RegisterState {
  final String errorMessage;

  RegisterFailuer({required this.errorMessage});
}
