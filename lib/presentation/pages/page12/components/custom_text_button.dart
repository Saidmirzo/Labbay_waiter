import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.isActive,
    this.padding,
    this.margin,
  });
  final String text;
  final Function onTap;
  final bool isActive;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.only(left: 12.w),
      child: TextButton(
        onPressed: () => onTap(),
        style: AppDecorations.buttonStyle(
          bgColor: isActive
              ? AppColors.buttonColor
              : AppColors.buttonColor.withOpacity(.1),
          borderRadius: 25.r,
          size: Size.fromHeight(50.h),
          padding: padding ?? EdgeInsets.symmetric(horizontal: 21.w),
        ),
        child: Text(
          text,
          style: AppTextStyles.body16w5.copyWith(
            color: isActive ? AppColors.accentColor : AppColors.black,
          ),
        ),
      ),
    );
  }
}
