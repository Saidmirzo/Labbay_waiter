import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';
import 'splash_button.dart';

class FoodItemListTile extends StatelessWidget {
  const FoodItemListTile({
    super.key,
    this.bgColor,
    this.trailing,
    this.subtitleColor,
    required this.onTap,
    this.title,
    this.path,
    this.cost,
  });

  final Color? bgColor;
  final Widget? trailing;
  final Color? subtitleColor;
  final Function() onTap;
  final String? title;
  final String? path;
  final int? cost;

  @override
  Widget build(BuildContext context) {
    return SplashButton(
      onTap: onTap,
      borderRadius: 22.r,
      child: Container(
        height: 87.h,
        width: double.maxFinite,
        padding: EdgeInsets.only(left: 13.w, right: 20.w),
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.messageButtonBg,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Row(
          children: [
            Container(
              width: 62.w,
              height: 41.h,
              margin: EdgeInsets.only(right: 18.w),
              child: Image.asset(path ?? Assets.images.osh),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title ?? "Palov (Qo'y go'shti)",
                    style: AppTextStyles.body16w5),
                Text("${cost ?? '17 000'} so'm",
                    style: AppTextStyles.body13w5.copyWith(
                      color: subtitleColor ?? AppColors.green.withOpacity(.7),
                    )),
              ],
            ),
            const Spacer(),
            trailing ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
