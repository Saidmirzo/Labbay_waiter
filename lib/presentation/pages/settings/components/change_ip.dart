import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';
import '../../page12/components/custom_confirmation_page.dart';
import 'settings_textfield.dart';

class ChangeIp extends StatelessWidget {
  const ChangeIp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236.h,
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
              SvgPicture.asset(Assets.icons.monitorMobile),
              SizedBox(width: 12.w),
              Text("IPni sozlash", style: AppTextStyles.body16w5),
            ],
          ),
          const SettingsTextField(hintText: "IPni kiriting"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CutomConfirmationPage(
                onTap: () => Navigator.pop(context),
                text: 'Qaytish',
                size: Size(142.w, 57.h),
              ),
              CutomConfirmationPage(
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
