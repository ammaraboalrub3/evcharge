import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/helper/snack_bar.dart';
import 'package:evcharge/features/auth/presentation/view/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> signOut(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context).pushReplacementNamed(LoginView.routeName);
  snackBar(context, "Log Out successfully", AppColors.kPrimaryColor);
}
