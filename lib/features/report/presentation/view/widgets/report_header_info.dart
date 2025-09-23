import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class ReportHeaderInfo extends StatelessWidget {
  const ReportHeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.report_problem_rounded,
          color: AppColors.kPrimaryColor,
          size: 150,
        ),
        Text(S.of(context).report_car_title_view,
            style: AppStyles.bold20.copyWith(
                fontFamily: "NEOSANSW23", color: AppColors.kPrimaryColor)),
        SizedBox(
          height: 8,
        ),
        Text(S.of(context).report_subtitle,
            style: AppStyles.regular12.copyWith(color: AppColors.greyColor)),
      ],
    );
  }
}
