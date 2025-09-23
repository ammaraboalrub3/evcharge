import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/features/menu/presentation/view/widgets/custom_list_tile_items.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(S.of(context).menu,
                    style: AppStyles.medium30.copyWith(
                        fontFamily: "NEOSANSW23",
                        color: AppColors.kPrimaryColor)),
                SizedBox(
                  height: 24,
                ),
                CustomListTileItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
