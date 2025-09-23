import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/features/auth/presentation/view/login_view.dart';
import 'package:evcharge/features/home/presentation/view/station_home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  static const routeName = "auth_gate";

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: AppColors.kPrimaryColor,
            ));
          } else if (snapshot.hasData) {
            return StationHomeView();
          } else {
            return LoginView();
          }
        });
  }
}
