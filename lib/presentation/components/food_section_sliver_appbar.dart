import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_waiter/presentation/components/empty_bottom.dart';
import 'package:labbay_waiter/presentation/components/splash_button.dart';
import 'package:labbay_waiter/presentation/routes/routes.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class FoodSectionSliverAppBar extends StatelessWidget {
  const FoodSectionSliverAppBar({
    super.key,
    this.favoriteBtnColor,
    this.favoriteIconColor,
  });

  final Color? favoriteBtnColor;
  final Color? favoriteIconColor;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.accentColor,
      surfaceTintColor: AppColors.accentColor,
      elevation: 0,
      bottom: const EmptyBottom(),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50.h,
            width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColors.green.withOpacity(.1),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(13.h),
                  child: SvgPicture.asset(Assets.icons.search),
                ),
                hintText: "Stol qidiruvi",
                hintStyle: AppTextStyles.body12w5.copyWith(
                  color: AppColors.green.withOpacity(.4),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          SplashButton(
            onTap: () {},
            child: Container(
              width: 50.h,
              height: 50.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: favoriteBtnColor ?? AppColors.green.withOpacity(.1),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child:
                  SvgPicture.asset(Assets.icons.star, color: favoriteIconColor),
            ),
          ),
          SplashButton(
            onTap: () => Navigator.pushNamed(context, Routes.basketPage),
            child: Container(
              width: 50.h,
              height: 50.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.green.withOpacity(.1),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: SvgPicture.asset(Assets.icons.shoppingCart),
            ),
          ),
        ],
      ),
    );
  }
}
