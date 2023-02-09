import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_waiter/presentation/components/splash_button.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class FoodSectionsAppBar extends StatelessWidget {
  const FoodSectionsAppBar({
    super.key,
    required this.chairNumber,
    required this.clientName,
    required this.bookingNumber,
    required this.bookingTime,
  });

  final int chairNumber;
  final String clientName;
  final int bookingNumber;
  final String bookingTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SplashButton(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(Assets.icons.arrowLeft2),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$chairNumber-stol",
                  style:
                      AppTextStyles.body16w6.copyWith(color: AppColors.green),
                ),
                Text(
                  clientName,
                  style:
                      AppTextStyles.body16w6.copyWith(color: AppColors.green),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 21.h, bottom: 22.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "№$bookingNumber",
                style: AppTextStyles.body12w5,
              ),
              Text(
                bookingTime,
                style: AppTextStyles.body12w5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
