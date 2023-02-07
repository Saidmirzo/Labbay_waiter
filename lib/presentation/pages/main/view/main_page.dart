import 'package:flutter/material.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Image.asset(Assets.images.desertBg),
          Text('Ushbu joyda sosiy fokus tekst ', style: AppTextStyles.body18w6,),
        ],
      )
    );
  }
}
