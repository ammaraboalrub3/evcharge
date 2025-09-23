import 'package:flutter/material.dart';

class NavItem {
  final IconData icon;
  final String title;
  final Widget page;

  const NavItem({
    required this.icon,
    required this.title,
    required this.page,
  });
}
