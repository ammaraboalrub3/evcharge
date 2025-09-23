import 'package:evcharge/core/util/app_images.dart';
import 'package:evcharge/features/home/presentation/view/widgets/card_stations_items_bloc_builder.dart';
import 'package:evcharge/core/widgets/custom_title_station.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class StationBodyItems extends StatelessWidget {
  const StationBodyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Image.asset(
              Assets.imagesFuelstationRafiki,
              height: MediaQuery.sizeOf(context).height * 0.3,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTitleStation(
              text: S.of(context).nearby_stations,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 18,
            ),
          ),
          CardStationsItemsBlocBuilder(),
        ],
      ),
    );
  }
}
