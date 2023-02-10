import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/presentation/pages/food_items/page12/components/custom_confirmation_page.dart';

import 'input_for_cost.dart';

class AdditionCostDialog extends StatelessWidget {
  const AdditionCostDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 390.h,
        width: double.maxFinite,
        padding: EdgeInsets.all(22.h),
        margin: EdgeInsets.symmetric(horizontal: 17.w),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Qo’shimcha narxlar', style: AppTextStyles.body16w5),
            SizedBox(height: 16.h),
            const InputForCost(hint: 'Xona narxi'),
            const InputForCost(hint: 'Idish narxi'),
            const InputForCost(hint: 'O’zi bilan olib ketish narxi'),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  activeColor: AppColors.black,
                  checkColor: AppColors.accentColor,
                ),
                Text('Xizmat haqqi', style: AppTextStyles.body14w5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomConfirmationButton(
                    text: 'Qaytish', onTap: () => Navigator.pop(context)),
                CustomConfirmationButton(
                  text: 'Yakunlash',
                  onTap: () {},
                  bgColor: AppColors.buttonColor,
                  textColor: AppColors.accentColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
