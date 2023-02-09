import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SplashButton extends StatelessWidget {
  SplashButton({
    super.key,
    required this.child,
    required this.onTap,
    this.borderRadius,
  });
  double? borderRadius;
  final Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius??15.r),
        child: child,
      ),
    );
  }
}