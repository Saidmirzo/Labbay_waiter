import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_decorations.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';
import 'package:labbay_waiter/presentation/routes/routes.dart';

import '../components/custom_number_button.dart';

class PinCodePage extends StatefulWidget {
  const PinCodePage({super.key});

  @override
  State<PinCodePage> createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {
  String number = '';

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
            NumberIndicator(number: number),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CutomNumberButton(text: '1', onTap: () => funcNumber(1)),
                    CutomNumberButton(text: '2', onTap: () => funcNumber(2)),
                    CutomNumberButton(text: '3', onTap: () => funcNumber(3)),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CutomNumberButton(text: '4', onTap: () => funcNumber(4)),
                    CutomNumberButton(text: '5', onTap: () => funcNumber(5)),
                    CutomNumberButton(text: '6', onTap: () => funcNumber(6)),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CutomNumberButton(text: '7', onTap: () => funcNumber(7)),
                    CutomNumberButton(text: '8', onTap: () => funcNumber(8)),
                    CutomNumberButton(text: '9', onTap: () => funcNumber(9)),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        Assets.icons.fingerScan,
                        height: 38.h,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    CutomNumberButton(text: '0', onTap: () => funcNumber(0)),
                    InkWell(
                      onTap: () => funcDelete(),
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

  funcNumber(int value) {
    setState(() {
      number += value.toString();
    });
    if (number.length == 4) {
      Navigator.pushReplacementNamed(context, Routes.mainPage);
    }
  }

  funcDelete() {
    if (number.isNotEmpty) {
      setState(() {
        number = number.substring(0, number.length - 1);
      });
    }
  }
}

class NumberIndicator extends StatelessWidget {
  const NumberIndicator({
    super.key,
    required this.number,
  });
  final String number;

  @override
  Widget build(BuildContext context) {
    int numberCount = number.split("").length;
    return Padding(
      padding: EdgeInsets.only(top: 12.h, bottom: 62.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          4,
          (index) => Container(
            height: 10.h,
            width: 10.h,
            margin: EdgeInsets.symmetric(horizontal: 6.w),
            decoration: BoxDecoration(
              color: numberCount > index
                  ? AppColors.accentColor
                  : AppColors.indicatorColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
