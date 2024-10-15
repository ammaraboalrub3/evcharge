import 'package:evcharge/widget/card_items.dart';
import 'package:flutter/material.dart';

class CardItemsBuilder extends StatelessWidget {
  const CardItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return const CardItems();
    }));
  }
}
