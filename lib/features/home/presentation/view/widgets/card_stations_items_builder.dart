import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:evcharge/features/home/presentation/view/inside_card_item_view.dart';
import 'package:evcharge/features/home/presentation/view/widgets/card_items.dart';
import 'package:flutter/material.dart';

class CardStationsItemsBuilder extends StatelessWidget {
  const CardStationsItemsBuilder({super.key, required this.stations});

  final List<StationsEntity> stations;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: stations.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                InsideCardItemView.routeName,
                arguments: stations[index],
              );
            },
            child: CardItems(stationsEntity: stations[index]),
          ),
        );
      },
    );
  }
}
