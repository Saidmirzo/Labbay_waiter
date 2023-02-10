

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_decorations.dart';
import '../../../../../config/constants/app_text_styles.dart';

class PlusMinusButtons extends StatelessWidget {
  const PlusMinusButtons({
    super.key,
    required this.onTap,
    required this.text,
  });
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      style: AppDecorations.buttonStyle(
        bgColor: Colors.transparent,
        border: BorderSide(color: AppColors.buttonColor),
        borderRadius: 25.r,
        padding: EdgeInsets.symmetric(horizontal: 31.w),
        size: Size.fromHeight(50.h),
      ),
      child: Text(
        text,
        style: AppTextStyles.body24w5.copyWith(color: AppColors.buttonColor),
      ),
    );
  }
}