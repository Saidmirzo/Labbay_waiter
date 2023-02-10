

import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

class CutomNumberButton extends StatelessWidget {
  const CutomNumberButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      style: AppDecorations.buttonStyle(
        bgColor: Colors.transparent,
        padding: const EdgeInsets.all(0),
        borderRadius: 100,
        size: const Size(80, 80),
      ),
      child: Text(
        text,
        style: AppTextStyles.head38w5.copyWith(
          color: AppColors.accentColor,
        ),
      ),
    );
  }
}