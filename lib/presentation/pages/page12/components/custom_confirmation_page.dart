import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

class CutomConfirmationPage extends StatelessWidget {
  const CutomConfirmationPage({
    super.key,
    required this.text,
    this.bgColor,
    required this.onTap,
    this.textColor,
  });
  final String text;
  final Color? bgColor;
  final Color? textColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      style: AppDecorations.buttonStyle(
        bgColor: bgColor ?? AppColors.messageButtonBg,
        borderRadius: 15.r,
        size: Size(142.w, 57.h),
      ),
      child: Text(
        text,
        style: AppTextStyles.body16w5
            .copyWith(color: textColor ?? AppColors.black),
      ),
    );
  }
}
