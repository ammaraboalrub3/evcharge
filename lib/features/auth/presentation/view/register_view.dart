import 'package:evcharge/core/service/get_it_services.dart';
import 'package:evcharge/features/auth/domain/repo/auth_repo.dart';
import 'package:evcharge/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/register_view_body_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const routeName = "register_view";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(getIt<AuthRepo>()),
      child: Scaffold(
        body: SafeArea(
          child: RegisterViewBodyConsumer(),
        ),
      ),
    );
  }
}
