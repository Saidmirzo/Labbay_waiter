import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';
import '../../food_items/page12/components/custom_confirmation_page.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 306.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 17.w),
      padding: EdgeInsets.all(22.w).copyWith(bottom: 27.h),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.icons.translate),
              SizedBox(width: 12.w),
              Text("Tilni o’zgartirish", style: AppTextStyles.body16w5),
            ],
          ),
          Container(
            height: 57.h,
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 22.w, right: 14.w),
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "O'zbek tili",
                  style: AppTextStyles.body14w5
                      .copyWith(color: AppColors.accentColor),
                ),
                SvgPicture.asset(Assets.icons.checkbox),
              ],
            ),
          ),
          Container(
            height: 57.h,
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 22.w, right: 14.w),
            decoration: BoxDecoration(
              color: AppColors.freePlaceGrid,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Русский язык", style: AppTextStyles.body14w5),
                // SvgPicture.asset(Assets.icons.checkbox),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomConfirmationButton(
                onTap: () => Navigator.pop(context),
                text: 'Qaytish',
                size: Size(142.w, 57.h),
              ),
              CustomConfirmationButton(
                onTap: () {},
                text: 'Saqlash',
                bgColor: AppColors.green,
                textColor: AppColors.accentColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
