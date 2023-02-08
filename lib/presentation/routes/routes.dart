import 'package:flutter/material.dart';
import 'package:labbay_waiter/presentation/pages/landing/view/landing_page.dart';
import 'package:labbay_waiter/presentation/pages/login/view/login_page.dart';
import 'package:labbay_waiter/presentation/pages/pin_code/view/pin_code_page.dart';

import '../pages/main/view/main_page.dart';

class Routes {
  static const mainPage = '/mainPage';
  static const landingPage = '/landingPage';
  static const loginPage = '/loginPage';
  static const pinCodePage = '/';
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case mainPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MainPage(),
          );
        case landingPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LandingPage(),
          );
        case loginPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LoginPage(),
          );
        case pinCodePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const PinCodePage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MainPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MainPage(),
      );
    }
  }
}
