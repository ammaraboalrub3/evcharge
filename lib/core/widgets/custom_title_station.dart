import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitleStation extends StatelessWidget {
  const CustomTitleStation({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 10,
          decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5))),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: AppStyles.regular20.copyWith(fontFamily: "NEOSANSW23"),
        )
      ],
    );
  }
}
