import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/features/menu/data/model/items_model.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.itemsModel,
  });

  final ItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Card(
          elevation: 2,
          color: Color.fromARGB(255, 252, 252, 252),
          child: ListTile(
            onTap: itemsModel.onTap,
            title: Text(
              itemsModel.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            leading: Icon(
              itemsModel.leadingIcon,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ));
  }
}
