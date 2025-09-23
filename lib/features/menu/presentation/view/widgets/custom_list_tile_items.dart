import 'package:evcharge/core/service/sign_out.dart';
import 'package:evcharge/features/menu/presentation/view/about_evcharge_view.dart';
import 'package:evcharge/features/menu/data/model/items_model.dart';
import 'package:evcharge/features/menu/presentation/view/widgets/custom_list_tile.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomListTileItems extends StatelessWidget {
  const CustomListTileItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemsModel> items = [
      ItemsModel(
        leadingIcon: Icons.report_gmailerrorred_outlined,
        title: S.of(context).about_evcharge,
        onTap: () {
          Navigator.pushNamed(context, AboutEvChargeView.routeName);
        },
      ),
      ItemsModel(
        leadingIcon: Icons.logout,
        title: S.of(context).sign_out,
        onTap: () async {
          await signOut(context);
        },
      ),
    ];

    return Column(
      children: items.map((item) => CustomListTile(itemsModel: item)).toList(),
    );
  }
}
