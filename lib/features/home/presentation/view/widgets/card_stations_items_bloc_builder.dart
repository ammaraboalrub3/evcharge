import 'package:evcharge/core/util/helper/dummy_stations.dart';
import 'package:evcharge/features/home/presentation/cubits/stations_cubit/stations_cubit.dart';
import 'package:evcharge/features/home/presentation/view/widgets/card_stations_items_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CardStationsItemsBlocBuilder extends StatelessWidget {
  const CardStationsItemsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StationsCubit, StationsState>(
      builder: (context, state) {
        if (state is StationsSuccess) {
          return CardStationsItemsBuilder(
            stations: state.stations,
          );
        } else if (state is StationsFailure) {
          return SliverToBoxAdapter(child: Text(state.errorMess));
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: CardStationsItemsBuilder(
              stations: getDummyEntity(),
            ),
          );
        }
      },
    );
  }
}
