import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_waiter/config/constants/constants.dart';

import 'custom_text_button.dart';

class VolumeRow extends StatefulWidget {
  const VolumeRow({
    super.key,
  });

  @override
  State<VolumeRow> createState() => _VolumeRowState();
}

class _VolumeRowState extends State<VolumeRow> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        3,
        (index) => CustomTextButton(
          text: volumeTexts[index],
          onTap: () {
            setState(() {
              activeIndex = index;
            });
          },
          isActive: activeIndex == index,
          padding: EdgeInsets.symmetric(horizontal: 31.w),
          margin: index == 0 ? const EdgeInsets.all(0) : null,
        ),
      ),
    );
  }
}
