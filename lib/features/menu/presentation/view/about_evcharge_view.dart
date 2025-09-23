import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_coulmn_item.dart';
import '../../../../core/widgets/custom_social_media.dart';
import '../../../../core/widgets/custom_title_station.dart';

class AboutEvChargeView extends StatelessWidget {
  const AboutEvChargeView({super.key});

  static const routeName = "about_evCharge";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 2,
        centerTitle: true,
        title: Text(S.of(context).about_evcharge,
            style:
                AppStyles.regular18.copyWith(color: AppColors.kPrimaryColor)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: Column(
          children: [
            CustomLogoItem(),
            SizedBox(
              height: 24,
            ),
            CustomTitleStation(
              text: S.of(context).who_are_we,
            ),
            SizedBox(
              height: 20,
            ),
            Text(S.of(context).evcharge_info,
                style:
                    AppStyles.regular18.copyWith(color: AppColors.greyColor)),
            SizedBox(
              height: 50,
            ),
            CustomSocialMedia(),
          ],
        ),
      ),
    );
  }
}
