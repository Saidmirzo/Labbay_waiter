import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/assets.dart';
import 'custom_text_button.dart';

class CommentRow extends StatefulWidget {
  const CommentRow({
    super.key,
  });

  @override
  State<CommentRow> createState() => _CommentRowState();
}

class _CommentRowState extends State<CommentRow> {
  int activeIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (activeIndex != 0) {
              setState(() {
                activeIndex = 0;
              });
            } else {
              setState(() {
                activeIndex = 1;
              });
            }
          },
          child: Container(
            height: 50.h,
            width: 50.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: activeIndex == 0
                  ? AppColors.buttonColor
                  : AppColors.messageButtonBg,
            ),
            child: SvgPicture.asset(
              Assets.icons.message,
              height: 24.h,
              color: activeIndex == 0 ? AppColors.accentColor : null,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        if (activeIndex == 0)
          Container(
            height: 50.h,
            width: 218.w,
            margin: EdgeInsets.only(left: 12.w),
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            decoration: BoxDecoration(
              color: AppColors.messageButtonBg,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: TextField(
              style: AppTextStyles.body16w5,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Izoh',
                hintStyle: AppTextStyles.body16w5.copyWith(
                  color: AppColors.buttonColor,
                ),
              ),
            ),
          )
        else
          Row(
            children: [
              CustomTextButton(
                text: 'Yog’siz',
                onTap: () {
                  if (activeIndex != 1) {
                    setState(() {
                      activeIndex = 1;
                    });
                  }
                },
                isActive: activeIndex == 1,
              ),
              CustomTextButton(
                text: 'Qazisiz',
                onTap: () {
                  if (activeIndex != 2) {
                    setState(() {
                      activeIndex = 2;
                    });
                  }
                },
                isActive: activeIndex == 2,
              ),
            ],
          ),
      ],
    );
  }
}
