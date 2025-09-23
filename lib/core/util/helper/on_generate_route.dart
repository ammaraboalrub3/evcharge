import 'package:evcharge/core/util/helper/auth_gate.dart';
import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:evcharge/features/splash/presentation/view/splash_view.dart';
import 'package:evcharge/features/menu/presentation/view/about_evcharge_view.dart';
import 'package:evcharge/features/home/presentation/view/inside_card_item_view.dart';
import 'package:evcharge/features/auth/presentation/view/login_view.dart';
import 'package:evcharge/features/auth/presentation/view/register_view.dart';
import 'package:evcharge/features/home/presentation/view/station_home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case RegisterView.routeName:
      return MaterialPageRoute(builder: (context) => RegisterView());
    case StationHomeView.routeName:
      return MaterialPageRoute(builder: (context) => StationHomeView());
    case AboutEvChargeView.routeName:
      return MaterialPageRoute(builder: (context) => AboutEvChargeView());
    case InsideCardItemView.routeName:
      return MaterialPageRoute(
          builder: (context) => InsideCardItemView(
                stationsEntity: settings.arguments as StationsEntity,
              ));
    case AuthGate.routeName:
      return MaterialPageRoute(builder: (context) => AuthGate());

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
