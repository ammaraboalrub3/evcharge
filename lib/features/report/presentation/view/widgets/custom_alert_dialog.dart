import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Text(S.of(context).submite_buttom),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.check,
            color: AppColors.kPrimaryColor,
            size: 30,
          )
        ],
      ),
      content: Text(content),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(S.of(context).close)),
      ],
    );
  }
}
