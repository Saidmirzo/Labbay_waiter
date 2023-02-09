import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

// ignore: must_be_immutable
class CustomGridItem extends StatelessWidget {
  CustomGridItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.booked = false,
    this.blocked = false,
    this.bookingNumber = "195",
    this.price = "000 so'm",
  });
  final Function() onTap;
  final String image;
  final String title;
  final String subtitle;
  bool booked;
  bool blocked;
  String bookingNumber;
  String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 12.h, top: 7.h),
        decoration: BoxDecoration(
          color: (booked && blocked)
              ? AppColors.pink.withOpacity(.5)
              : booked
                  ? AppColors.yellow.withOpacity(.83)
                  : AppColors.freePlaceGrid,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (booked)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (blocked) SvgPicture.asset(Assets.icons.lockBlack),
                  Text("№ $bookingNumber", style: AppTextStyles.body10w5),
                ],
              ),
            if (booked) Text("175 000 so'm", style: AppTextStyles.body12w6),
            const Spacer(),
            Image.asset(image, height: 80.h, fit: BoxFit.scaleDown),
            Text(
              title,
              style: AppTextStyles.body16w5,
            ),
            Text(
              subtitle,
              style: AppTextStyles.body13w5.copyWith(
                color: blocked
                    ? AppColors.red.withOpacity(.7)
                    : booked
                        ? AppColors.orange.withOpacity(.7)
                        : AppColors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
