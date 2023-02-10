
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_decorations.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';

class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          image: DecorationImage(
            image: AssetImage(
              Assets.images.pinCodeBg,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 112.h, bottom: 63.h),
              child: SvgPicture.asset(Assets.icons.logoLabbayWhite),
            ),
            Text(
              'Maxfiy parolni kiriting',
              style:
                  AppTextStyles.body18w5.copyWith(color: AppColors.accentColor),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 62.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => Container(
                    height: 10.h,
                    width: 10.h,
                    margin: EdgeInsets.symmetric(horizontal: 6.w),
                    decoration: const BoxDecoration(
                      color: AppColors.accentColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CutomNumberButton(text: '1', onTap: () {}),
                    CutomNumberButton(text: '2', onTap: () {}),
                    CutomNumberButton(text: '3', onTap: () {}),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CutomNumberButton(text: '4', onTap: () {}),
                    CutomNumberButton(text: '5', onTap: () {}),
                    CutomNumberButton(text: '6', onTap: () {}),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CutomNumberButton(text: '7', onTap: () {}),
                    CutomNumberButton(text: '8', onTap: () {}),
                    CutomNumberButton(text: '9', onTap: () {}),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Image.asset(
                        Assets.icons.fingerScan,
                        height: 38.h,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    CutomNumberButton(text: '0', onTap: () {}),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.icons.arrowLeft),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Text(
              'Parolni unutdingizmi ?',
              style: AppTextStyles.body14w5.copyWith(
                color: AppColors.accentColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.accentColor,
              ),
            ),
            SizedBox(height: 40.h)
          ],
        ),
      ),
    );
  }
}

class CutomNumberButton extends StatelessWidget {
  const CutomNumberButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      style: AppDecorations.buttonStyle(
        bgColor: Colors.transparent,
        padding: const EdgeInsets.all(0),
        borderRadius: 100,
        size: const Size(80, 80),
      ),
      child: Text(
        text,
        style: AppTextStyles.head38w5.copyWith(
          color: AppColors.accentColor,
        ),
      ),
    );
  }
}
