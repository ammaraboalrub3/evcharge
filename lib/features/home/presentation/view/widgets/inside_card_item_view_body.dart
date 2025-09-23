import 'package:evcharge/core/util/helper/open_map.dart';
import 'package:evcharge/core/widgets/custom_button.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:evcharge/features/home/presentation/view/widgets/custom_image_item.dart';
import 'package:evcharge/features/home/presentation/view/widgets/custom_inforomation_item_container.dart';
import 'package:evcharge/features/home/presentation/view/widgets/google_map_screen.dart';
import 'package:flutter/material.dart';

class InsideCardItemViewBody extends StatelessWidget {
  const InsideCardItemViewBody({
    super.key,
    required this.stationsEntity,
  });

  final StationsEntity stationsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          CustomImageItem(stationsEntity: stationsEntity),
          SizedBox(
            height: 18,
          ),
          CustomInformoationContainer(stationsEntity: stationsEntity),
          SizedBox(
            height: 16,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: GoogleMapScreen(stationsEntity: stationsEntity)),
          SizedBox(
            height: 24,
          ),
          CustomButton(
              text: "Get Diriction",
              onTap: () async {
                Maps.openMap(stationsEntity.lat, stationsEntity.long);
              })
        ],
      ),
    );
  }
}
