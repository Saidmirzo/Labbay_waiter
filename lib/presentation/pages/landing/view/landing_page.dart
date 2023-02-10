import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_decorations.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/presentation/routes/routes.dart';

import '../../../../config/constants/assets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, bottom: 61.h),
        child: Column(
          children: [
            Image.asset(Assets.images.desertBg),
            Padding(
              padding: EdgeInsets.only(top: 50.h, bottom: 16.h),
              child: Text('Ushbu joyda sosiy fokus tekst ',
                  style: AppTextStyles.body18w6, ),
            ),
            Text(
              'Ushbu joyga xar hil kerakli tekstlar\nyoziladi',
              style:
                  AppTextStyles.body12w4.copyWith(color: AppColors.textColor1),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            TextButton(
              onPressed: () =>Navigator.pushReplacementNamed(context, Routes.loginPage),
              style: AppDecorations.buttonStyle(
                bgColor: AppColors.buttonColor,
                borderRadius: 15.r,
                padding: EdgeInsets.symmetric(horizontal: 49.w, vertical: 18.h),
              ),
              child: Text(
                'Davom etish',
                style: AppTextStyles.body16w5.copyWith(
                  color: AppColors.accentColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
