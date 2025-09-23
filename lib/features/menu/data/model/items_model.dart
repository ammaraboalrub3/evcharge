import 'package:flutter/widgets.dart';

class ItemsModel {
  final IconData leadingIcon;
  final String title;
  final String? routeName;
  final VoidCallback? onTap;

  const ItemsModel(
      {required this.onTap,
      required this.leadingIcon,
      required this.title,
      this.routeName});
}
