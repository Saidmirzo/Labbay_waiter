import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_decorations.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';
import 'package:labbay_waiter/presentation/routes/routes.dart';

import '../components/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          image: DecorationImage(
            image: AssetImage(
              Assets.images.loginBg,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.icons.logoLabbay),
            SizedBox(height: 40.h),
            CustomTextField(
              hint: 'Login',
              path: Assets.icons.iconUser,
            ),
            CustomTextField(
              hint: 'Parol',
              path: Assets.icons.iconLock,
            ),
            CustomTextField(
              hint: 'IP',
              path: Assets.icons.iconIp,
            ),
            SizedBox(height: 26.h),
            TextButton(
              onPressed: () =>Navigator.pushReplacementNamed(context, Routes.pinCodePage),
              style: AppDecorations.buttonStyle(
                bgColor: AppColors.buttonColor,
                borderRadius: 15,
                padding: EdgeInsets.symmetric(vertical: 18.h),
                size: const Size.fromWidth(double.maxFinite),
              ),
              child: Text(
                'Kirish',
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
