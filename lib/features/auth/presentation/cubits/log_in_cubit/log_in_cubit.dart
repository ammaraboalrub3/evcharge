import 'package:bloc/bloc.dart';
import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/helper/snack_bar.dart';
import 'package:evcharge/features/auth/domain/entities/user_entity.dart';
import 'package:evcharge/features/auth/domain/repo/auth_repo.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:meta/meta.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(this.authRepo) : super(LogInInitial());
  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
    context,
  ) async {
    emit(LogInLaoding());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (faulier) => emit(LogInFailuer(errorMessage: faulier.errorMessage)),
      (userEntity) {
        emit(LogInSucess(userEntity: userEntity));
        snackBar(context, S.of(context).login_succ, AppColors.kPrimaryColor);
      },
    );
  }
}
