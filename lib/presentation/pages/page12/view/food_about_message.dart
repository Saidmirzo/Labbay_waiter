import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_decorations.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';

import '../components/comment_row.dart';
import '../components/count_row_widget.dart';
import '../components/custom_confirmation_page.dart';
import '../components/custom_text_button.dart';
import '../components/plus_minus_button.dart';
import '../components/voume_row.dart';

class FoodAboutMessage extends StatelessWidget {
  const FoodAboutMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: AppColors.buttonColor.withOpacity(.37),
          padding: EdgeInsets.only(
            right: 18.w,
            left: 18.w,
            top: 20.h,
            bottom: 52.h,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.circular(22.r),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 25.h),
                      child: Image.asset(
                        Assets.images.palov,
                        height: 157.h,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 22.h,
                          width: 22.h,
                          margin: EdgeInsets.all(12.h),
                          decoration: BoxDecoration(
                            color: AppColors.backButtonColor,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            Assets.icons.arrowCancel,
                            height: 12.h,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 43.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Palov (Qo’y go’shti)',
                          style: AppTextStyles.body16w6),
                      Text(
                        '17 000 so’m',
                        style: AppTextStyles.body14w5.copyWith(
                          color: AppColors.buttonColor,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
                          child: Text('Izoh:', style: AppTextStyles.body13w6)),
                      const CommentRow(),
                      Padding(
                          padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
                          child: Text('Hajmi:', style: AppTextStyles.body13w6)),
                      const VolumeRow()
                    ],
                  ),
                ),
                const CountRowWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CutomConfirmationPage(text: 'Qaytish', onTap: () {}),
                    SizedBox(width: 12.w),
                    CutomConfirmationPage(
                      text: 'Yakunlash',
                      onTap: () {},
                      bgColor: AppColors.buttonColor,
                      textColor: AppColors.accentColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}






