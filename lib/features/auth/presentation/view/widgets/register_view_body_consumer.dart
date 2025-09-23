import 'package:evcharge/core/util/helper/snack_bar.dart';
import 'package:evcharge/core/widgets/cutom_progress_hud.dart';
import 'package:evcharge/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterViewBodyConsumer extends StatelessWidget {
  const RegisterViewBodyConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSucess) {
          Navigator.of(context).pop(state.email);
        }
        if (state is RegisterFailuer) {
          snackBar(context, state.errorMessage, Colors.red);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is RegisterLaoding ? true : false,
            child: RegisterViewBody());
      },
    );
  }
}
