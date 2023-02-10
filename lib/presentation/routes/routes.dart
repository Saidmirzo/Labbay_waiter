import 'package:flutter/material.dart';
import 'package:labbay_waiter/presentation/pages/landing/view/landing_page.dart';
import 'package:labbay_waiter/presentation/pages/login/view/login_page.dart';
import 'package:labbay_waiter/presentation/pages/pin_code/view/pin_code_page.dart';
import 'package:labbay_waiter/presentation/pages/settings/settings_page.dart';

import '../pages/favorite_foods/favorite_foods_page.dart';
import '../pages/food_items/food_items_page.dart';
import '../pages/food_sections/food_sections_page.dart';
import '../pages/home/home_page.dart';
import '../pages/main/view/main_page.dart';

class Routes {
  static const mainPage = '/mainPage';
  static const landingPage = '/landingPage';
  static const loginPage = '/loginPage';
  static const pinCodePage = '/pinCodePage';

   static const homePage = '/homePage';
   static const foodSectionsPage = '/foodSectionsPage';
  static const foodItemsPage = '/foodItemsPage';
  static const favoriteFoodsPage = '/favoriteFoodsPage';
  static const settingsPage = '/';

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



        case homePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
        case foodSectionsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const FoodSectionsPage(),
          );
        case foodItemsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const FoodItemsPage(),
          );
        case favoriteFoodsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const FavoriteFoodsPage(),
          );
        
        case settingsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SettingsPage(),
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
