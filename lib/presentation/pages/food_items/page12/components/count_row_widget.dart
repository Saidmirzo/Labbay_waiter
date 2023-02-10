import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_waiter/presentation/pages/food_items/page12/components/plus_minus_button.dart';

import '../../../../../config/constants/app_text_styles.dart';

class CountRowWidget extends StatefulWidget {
  const CountRowWidget({
    super.key,
  });

  @override
  State<CountRowWidget> createState() => _CountRowWidgetState();
}

class _CountRowWidgetState extends State<CountRowWidget> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: EdgeInsets.symmetric(vertical: 24.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 60.w,
            child: PlusMinusButtons(text: '−', onTap: () => funcMinus()),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(count.toString(), style: AppTextStyles.body20w4),
          ),
          Positioned(
            right: 60.w,
            child: PlusMinusButtons(text: '+', onTap: () => funcPlus()),
          ),
        ],
      ),
    );
  }

  funcPlus() {
    setState(() {
      count++;
    });
  }

  funcMinus() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }
}
