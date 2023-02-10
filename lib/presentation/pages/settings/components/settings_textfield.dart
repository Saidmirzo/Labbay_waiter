import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class SettingsTextField extends StatelessWidget {
  const SettingsTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.body14w5.copyWith(
            color: AppColors.hintColor,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
