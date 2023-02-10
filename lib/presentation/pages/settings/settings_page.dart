import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';
import 'package:labbay_waiter/presentation/components/splash_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String username = "Jakhongir Sagatov";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 62.h),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.images.regBg)),
        ),
        child: Column(
          children: [
            const SettingsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 48.h),
              child: Text(
                username,
                style: AppTextStyles.head32w8.copyWith(color: AppColors.green),
                textAlign: TextAlign.center,
              ),
            ),
            SettingsItem(
              icon: Assets.icons.settingLock,
              title: 'Maxfiy parolni o’zgartirish',
              onTap: () {},
            ),
            SettingsItem(
              icon: Assets.icons.userOctagon,
              title: 'Ma’lumotlarni o’zgartirish',
              onTap: () {},
            ),
            SettingsItem(
              icon: Assets.icons.monitorMobile,
              title: 'IPni o’zgartirish',
              onTap: () {},
            ),
            SettingsItem(
              icon: Assets.icons.translate,
              title: 'Til o’zgartirish',
              onTap: () {},
            ),
            SettingsItem(
              icon: Assets.icons.infoCircle,
              title: 'Dastur haqida',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

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

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
  });

  final Function() onTap;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: SplashButton(
        onTap: () {
          showDialog(
            context: context,
            barrierColor: AppColors.green.withOpacity(.4),
            builder: (context) => BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Center(
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    height: 378.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    padding: EdgeInsets.all(22.w).copyWith(bottom: 27.h),
                    decoration: BoxDecoration(
                      color: AppColors.accentColor,
                      borderRadius: BorderRadius.circular(22.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.settingLock),
                            SizedBox(width: 12.w),
                            Text("Maxfiy parolni o’zgartirish", style: AppTextStyles.body16w5),
                          ],
                        ),
                        const SettingsTextField(hintText: "Avvalgi parolni kiriting"),
                        const SettingsTextField(hintText: "Avvalgi parolni qaytadan kiriting"),
                        const SettingsTextField(hintText: "Yangi parolni kiriting"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        borderRadius: 22.r,
        child: Container(
          height: 80.h,
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 25.w),
          decoration: BoxDecoration(
            color: AppColors.freePlaceGrid,
            borderRadius: BorderRadius.circular(22.r),
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 21.w),
              Text(title, style: AppTextStyles.body16w5),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsTextField extends StatelessWidget {
  const SettingsTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.body14w5.copyWith(
            color: AppColors.hintColor,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
