import 'package:evcharge/core/service/get_it_services.dart';
import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/helper/bloc_observer.dart';
import 'package:evcharge/core/util/helper/init_fire_base.dart';
import 'package:evcharge/core/util/helper/on_generate_route.dart';
import 'package:evcharge/features/splash/presentation/view/splash_view.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();
  setupAuth();
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const EVCharge());
}

class EVCharge extends StatelessWidget {
  const EVCharge({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("en"),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      theme: ThemeData(
          textTheme: TextTheme().apply(bodyColor: AppColors.mainTextcolor),
          scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.backgroundColor)),
    );
  }
}
