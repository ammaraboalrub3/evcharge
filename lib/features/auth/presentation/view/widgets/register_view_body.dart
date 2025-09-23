import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_images.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/core/widgets/custom_button.dart';
import 'package:evcharge/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/custom_passowrd_text_field.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:evcharge/generated/l10n.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  late String email, password;
  GlobalKey<FormState> keyForm = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Form(
          key: keyForm,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 30,
                        color: AppColors.kPrimaryColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Image.asset(
                      Assets.imagesLogo,
                      width: 75,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset(
                Assets.imagesFuelstationRafiki,
                width: 160,
              ),
              Row(
                children: [
                  Text(S.of(context).rigester, style: AppStyles.bold28),
                ],
              ),
              Row(
                children: [
                  Text(
                    S.of(context).regester_subtitle,
                    style: AppStyles.regular14
                        .copyWith(color: AppColors.greyColor),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintStyle: const TextStyle(color: AppColors.greyColor),
                onchange: (value) {
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
                text: S.of(context).create_an_account_buttom,
                onTap: () async {
                  if (keyForm.currentState!.validate()) {
                    keyForm.currentState!.save();
                    setState(() {
                      context.read<RegisterCubit>().createUserEmailAndPassword(
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
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).have_account,
                    style: TextStyle(color: AppColors.greyColor, fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(S.of(context).log_in,
                        style: AppStyles.bold14
                            .copyWith(color: AppColors.kPrimaryColor)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
