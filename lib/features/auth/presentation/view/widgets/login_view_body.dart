import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/core/widgets/custom_button.dart';
import 'package:evcharge/features/auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/custom_passowrd_text_field.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/not_a_member.dart';
import 'package:evcharge/core/widgets/custom_coulmn_item.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late String email, password;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              CustomLogoItem(),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(S.of(context).log_in, style: AppStyles.bold28),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).email,
              ),
              const SizedBox(
                height: 18,
              ),
              CustomPasswordFormField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: S.of(context).log_in,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    setState(() {
                      context.read<LogInCubit>().signInWithEmailAndPassword(
                            email,
                            password,
                            context,
                          );
                    });
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              ),
              NotAMember(),
            ],
          ),
        ),
      ),
    );
  }
}
