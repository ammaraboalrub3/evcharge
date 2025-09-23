import 'package:bloc/bloc.dart';
import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/helper/snack_bar.dart';

import 'package:evcharge/features/auth/domain/entities/user_entity.dart';
import 'package:evcharge/features/auth/domain/repo/auth_repo.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());

  final AuthRepo authRepo;

  Future<void> createUserEmailAndPassword(
    String email,
    String password,
    BuildContext context,
  ) async {
    emit(RegisterLaoding());
    var result = await authRepo.createUserWithEmailAndPassword(
      email,
      password,
    );
    result.fold(
      (fauiler) {
        emit(RegisterFailuer(errorMessage: fauiler.errorMessage));
      },
      (userEntity) {
        snackBar(context, S.of(context).register_succ, AppColors.kPrimaryColor);
        emit(RegisterSucess(userEntity: userEntity, email: email));
      },
    );
  }
}
