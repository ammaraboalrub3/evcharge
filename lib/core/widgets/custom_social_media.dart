import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomSocialMedia extends StatelessWidget {
  const CustomSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(S.of(context).follow_us,
            style: AppStyles.regular14.copyWith(fontFamily: "NEOSANSW23")),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook,
              color: AppColors.kPrimaryColor,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.telegram,
              color: AppColors.kPrimaryColor,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.email,
              color: AppColors.kPrimaryColor,
            ),
          ],
        )
      ],
    );
  }
}
