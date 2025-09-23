import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/core/util/helper/open_map.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:flutter/material.dart';
import '../inside_card_item_view.dart';

class CardItems extends StatelessWidget {
  const CardItems({
    super.key,
    required this.stationsEntity,
  });

  final StationsEntity stationsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            InsideCardItemView.routeName,
            arguments: stationsEntity,
          );
        },
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: ListTile(
              leading: SizedBox(
                height: 75,
                width: 75,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: stationsEntity.imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: GestureDetector(
                  onTap: () async {
                    await Maps.openMap(
                      stationsEntity.lat,
                      stationsEntity.long,
                    );
                  },
                  child: const Icon(
                    Icons.location_on_sharp,
                    color: AppColors.kPrimaryColor,
                    size: 24,
                  ),
                ),
              ),
              title: Row(
                children: [
                  Text(
                    stationsEntity.name ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.regular12.copyWith(
                      fontFamily: "NEOSANSW23",
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Distance ",
                    style: AppStyles.regular14.copyWith(color: Colors.grey),
                  ),
                  Text(
                    "${stationsEntity.distance?.toStringAsFixed(3) ?? '0.000'}",
                    style: AppStyles.regular14.copyWith(
                      color: AppColors.kSecondaryColor,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    "Km",
                    style: AppStyles.regular12.copyWith(
                      color: AppColors.kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
