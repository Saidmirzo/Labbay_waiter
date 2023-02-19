import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';
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
        child: Padding(
          padding: EdgeInsets.only(top: 225.h, bottom: 20.h),
          child: Column(
            children: [
              SvgPicture.asset(Assets.icons.logoLabbay),
              SizedBox(height: 40.h),
              CustomTextField(
                hint: 'Telephone number or Login',
                path: Assets.icons.call,
              ),
              CustomTextField(
                hint: 'Password',
                path: Assets.icons.iconLock,
              ),
              SizedBox(height: 6.h),
              TextButton(
                onPressed: () {},
                style: AppDecorations.buttonStyle(
                  bgColor: AppColors.buttonColor,
                  borderRadius: 15,
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  size: const Size.fromWidth(double.maxFinite),
                ),
                child: Text(
                  'Login',
                  style: AppTextStyles.body16w5.copyWith(
                    color: AppColors.accentColor,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                '© Barcha huquqlar himoyalangan',
                style: AppTextStyles.body10w5.copyWith(
                  color: AppColors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
