import 'package:evcharge/core/util/helper/auth_gate.dart';
import 'package:evcharge/core/util/helper/snack_bar.dart';
import 'package:evcharge/core/widgets/cutom_progress_hud.dart';
import 'package:evcharge/features/auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInViewBodyConsumer extends StatelessWidget {
  const LogInViewBodyConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInSucess) {
          Navigator.pushNamed(context, AuthGate.routeName);
        }
        if (state is LogInFailuer) {
          snackBar(context, state.errorMessage, Colors.red);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is LogInLaoding ? true : false,
            child: LoginViewBody());
      },
    );
  }
}
