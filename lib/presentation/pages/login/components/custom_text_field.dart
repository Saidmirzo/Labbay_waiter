import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.path,
  });
  final String hint;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      margin: EdgeInsets.symmetric(vertical: 6.h),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.borderColor,
          ),
          boxShadow: [
            BoxShadow(color: AppColors.shadowColor, blurRadius: 50.r)
          ]),
      child: TextField(
        style: AppTextStyles.body14w5,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: AppTextStyles.body14w5.copyWith(
            color: AppColors.hintColor,
          ),
          prefixIcon: Container(
            padding: EdgeInsets.all(5.h),
            margin: EdgeInsets.only(right: 10.w),
            child: SvgPicture.asset(
              path,
              height: 20.h,
            ),
          ),
        ),
      ),
    );
  }
}
