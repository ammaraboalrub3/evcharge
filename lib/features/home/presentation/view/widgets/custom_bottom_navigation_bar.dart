// lib/widget/station_bottom_nav_bar.dart
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/features/home/data/model/nav_item_model.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<NavItem> items;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      onTap: onTap,
      initialActiveIndex: currentIndex,
      backgroundColor: Colors.white,
      elevation: 0,
      items: items
          .map(
            (item) => TabItem(
              icon: Icon(item.icon),
              activeIcon:
                  Icon(item.icon, color: AppColors.kPrimaryColor, size: 30),
              title: item.title,
            ),
          )
          .toList(),
    );
  }
}
