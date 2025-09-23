import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/features/auth/presentation/view/register_view.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class NotAMember extends StatelessWidget {
  const NotAMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).not_member,
            style: AppStyles.regular12.copyWith(color: AppColors.greyColor)),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, RegisterView.routeName);
          },
          child: Text(S.of(context).regester_now,
              style: AppStyles.bold14.copyWith(color: AppColors.kPrimaryColor)),
        ),
      ],
    );
  }
}
