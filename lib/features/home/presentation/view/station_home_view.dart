import 'package:evcharge/core/service/get_it_services.dart';
import 'package:evcharge/features/home/domain/repo/home_repo.dart';
import 'package:evcharge/features/home/presentation/cubits/stations_cubit/stations_cubit.dart';
import 'package:evcharge/features/home/presentation/view/widgets/custom_bottom_navigation_bar.dart';
import 'package:evcharge/features/home/data/model/nav_item_model.dart';
import 'package:evcharge/features/report/presentation/view/Report_malfunction.dart';
import 'package:evcharge/features/calculate/presentation/view/calculate_view.dart';
import 'package:evcharge/features/menu/presentation/view/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/station_body_items.dart';

class StationHomeView extends StatefulWidget {
  const StationHomeView({super.key});

  static const routeName = "stations_view";

  @override
  State<StationHomeView> createState() => _StationHomeViewState();
}

class _StationHomeViewState extends State<StationHomeView> {
  final List<NavItem> navItems = const [
    NavItem(
      icon: Icons.home,
      title: "Home",
      page: StationBodyItems(),
    ),
    NavItem(
      icon: Icons.calculate,
      title: "Calculate",
      page: Calculate(),
    ),
    NavItem(
      icon: Icons.report,
      title: "Report",
      page: ReportMalfunction(),
    ),
    NavItem(
      icon: Icons.settings,
      title: "Settings",
      page: Menu(),
    ),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          StationsCubit(getIt.get<HomeRepo>())..fetchStations(),
      child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) => setState(() => currentIndex = value),
            items: navItems,
          ),
          body: navItems[currentIndex].page),
    );
  }
}
