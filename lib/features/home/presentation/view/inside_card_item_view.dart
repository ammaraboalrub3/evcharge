import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:evcharge/features/home/presentation/view/widgets/inside_card_item_view_body.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class InsideCardItemView extends StatelessWidget {
  const InsideCardItemView({super.key, required this.stationsEntity});

  static const routeName = "inside_card_view";
  final StationsEntity stationsEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 2,
        title: Text(S.of(context).station_information,
            style:
                AppStyles.regular20.copyWith(color: AppColors.kPrimaryColor)),
        centerTitle: true,
      ),
      body: InsideCardItemViewBody(stationsEntity: stationsEntity),
    );
  }
}
