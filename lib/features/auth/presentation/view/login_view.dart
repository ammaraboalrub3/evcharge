import 'package:evcharge/core/service/get_it_services.dart';
import 'package:evcharge/features/auth/domain/repo/auth_repo.dart';
import 'package:evcharge/features/auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/log_in_view_body_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = "login_view";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogInCubit>(
      create: (context) => LogInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        body: SafeArea(child: LogInViewBodyConsumer()),
      ),
    );
  }
}
