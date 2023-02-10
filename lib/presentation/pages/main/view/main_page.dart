import 'package:flutter/material.dart';
import 'package:labbay_waiter/presentation/pages/home/home_page.dart';
import 'package:labbay_waiter/presentation/pages/settings/settings_page.dart';

import '../components/custom_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            physics:const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              HomePage(),
              SettingsPage(),
            ],
          ),
          CustomBottomNavigationBar(pageController: pageController)
        ],
      ),
    );
  }
}


