import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.accentColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.icons.logoLabbay),
            Container(
              height: 57.h,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(
                  color: AppColors.borderColor,
                ),
              ),
              child: TextField(
                style: AppTextStyles.body14w5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Login',
                  hintStyle: AppTextStyles.body14w5.copyWith(
                    color: AppColors.hintColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
