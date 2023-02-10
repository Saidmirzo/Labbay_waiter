import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class InputForCost extends StatelessWidget {
  const InputForCost({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      margin: EdgeInsets.only(bottom: 12.h),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: AppColors.borderColor),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor3,
            offset: const Offset(12, 26),
            blurRadius: 50,
          )
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: AppTextStyles.body14w4.copyWith(
            color: AppColors.hintColor,
          ),
        ),
      ),
    );
  }
}