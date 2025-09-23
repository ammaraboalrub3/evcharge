import 'package:evcharge/features/report/presentation/view/widgets/custom_alert_dialog.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

void ShowDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return CustomAlertDialog(
        content: S.of(context).dialog_content,
      );
    },
  );
}
