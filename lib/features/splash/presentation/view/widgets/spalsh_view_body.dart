import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_images.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/util/helper/auth_gate.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AuthGate.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                Assets.imagesYarmoukUniversityLogo,
              )),
        ),
        SizedBox(
          height: 35,
        ),
        Text("Developed By",
            style: AppStyles.bold22.copyWith(fontFamily: "NEOSANSW23")),
        SizedBox(
          height: 8,
        ),
        Text(
          "Ammar Aboalrub",
          style: AppStyles.regular14.copyWith(color: Colors.grey),
        ),
        SizedBox(
          height: 40,
        ),
        Text("Supervisor By",
            style: AppStyles.bold18.copyWith(fontFamily: "NEOSANSW23")),
        SizedBox(
          width: 16,
        ),
        Text("Amera Jaradat",
            style: AppStyles.bold18.copyWith(
                fontFamily: "NEOSANSW23", color: AppColors.kSecondaryColor)),
      ],
    );
  }
}
