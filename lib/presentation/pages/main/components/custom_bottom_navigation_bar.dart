import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/assets.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  double activeIndex = 0;
  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      if (widget.pageController.page != activeIndex) {
        setState(() {
          activeIndex = widget.pageController.page ?? 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      right: 10,
      child: Container(
        height: 74.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
          color: AppColors.accentColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor2,
              blurRadius: 50,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                widget.pageController.jumpToPage(0);
              },
              icon: SvgPicture.asset(Assets.icons.home,
                  color: activeIndex == 0
                      ? AppColors.green
                      : AppColors.inActiveColor),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.icons.clock,
                  color: activeIndex == 3
                      ? AppColors.green
                      : AppColors.inActiveColor),
            ),
            IconButton(
              onPressed: () {
                widget.pageController.jumpToPage(1);

              },
              icon: SvgPicture.asset(Assets.icons.setting,
                  color: activeIndex == 1
                      ? AppColors.green
                      : AppColors.inActiveColor),
            ),
          ],
        ),
      ),
    );
  }
}
