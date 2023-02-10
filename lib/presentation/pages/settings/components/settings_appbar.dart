import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';
import '../../../components/splash_button.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SplashButton(
            onTap: () {},
            child: SvgPicture.asset(Assets.icons.arrowLeft2),
          ),
          Text("Sozlamalar", style: AppTextStyles.body16w5),
          SplashButton(
            onTap: () {},
            child: SvgPicture.asset(Assets.icons.logout),
          ),
        ],
      ),
    );
  }
}
