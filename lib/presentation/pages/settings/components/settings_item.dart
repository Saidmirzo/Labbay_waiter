import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../components/splash_button.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
  });

  final Function() onTap;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: SplashButton(
        onTap: onTap,
        borderRadius: 22.r,
        child: Container(
          height: 80.h,
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 25.w),
          decoration: BoxDecoration(
            color: AppColors.freePlaceGrid,
            borderRadius: BorderRadius.circular(22.r),
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 21.w),
              Text(title, style: AppTextStyles.body16w5),
            ],
          ),
        ),
      ),
    );
  }
}
