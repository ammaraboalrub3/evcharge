import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_images.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:flutter/material.dart';

class CustomLogoItem extends StatelessWidget {
  const CustomLogoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.imagesLogo,
          width: MediaQuery.sizeOf(context).width * 0.3,
        ),
        Text("EVCharge",
            style: AppStyles.medium30.copyWith(
                color: AppColors.kPrimaryColor, fontFamily: "NEOSANSW23")),
        Text("Electric Vehicle Charge",
            style:
                AppStyles.regular18.copyWith(color: AppColors.kPrimaryColor)),
      ],
    );
  }
}
