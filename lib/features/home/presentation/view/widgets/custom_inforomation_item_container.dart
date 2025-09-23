import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomInformoationContainer extends StatelessWidget {
  const CustomInformoationContainer({
    super.key,
    required this.stationsEntity,
  });

  final StationsEntity stationsEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16, top: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 175, 175, 175),
              offset: Offset(0, 2),
              blurRadius: 3,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(stationsEntity.name!,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regular14.copyWith(fontFamily: "NEOSANSW23")),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).distance,
                  overflow: TextOverflow.ellipsis,
                  style:
                      AppStyles.regular14.copyWith(fontFamily: "NEOSANSW23")),
              Text("${stationsEntity.distance!.toStringAsFixed(3)} Km",
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.regular14
                      .copyWith(color: AppColors.kSecondaryColor)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).address,
                  style:
                      AppStyles.regular14.copyWith(fontFamily: "NEOSANSW23")),
              SizedBox(
                child: Text(
                  stationsEntity.adress!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
