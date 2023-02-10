import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

class CutomConfirmationButton extends StatelessWidget {
  const CutomConfirmationButton({
    super.key,
    required this.text,
    this.bgColor,
    required this.onTap,
    this.textColor,
    this.size,
  });
  final String text;
  final Color? bgColor;
  final Color? textColor;
  final Function() onTap;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      style: AppDecorations.buttonStyle(
        bgColor: bgColor ?? AppColors.messageButtonBg,
        borderRadius: 15.r,
        size:size?? Size(142.w, 57.h),
      ),
      child: Text(
        text,
        style: AppTextStyles.body16w5.copyWith(color: textColor ?? AppColors.black),
      ),
    );
  }
}
