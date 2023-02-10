import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';

import 'components/change_info.dart';
import 'components/change_ip.dart';
import 'components/change_language.dart';
import 'components/change_password.dart';
import 'components/settings_appbar.dart';
import 'components/settings_item.dart';

enum SettingsEnum {
  changePassword,
  changeInfo,
  chamgeIP,
  changeLanguage,
  about,
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String username = "Jakhongir Sagatov";

  void _showDialog(SettingsEnum item) {
    showDialog(
      context: context,
      barrierColor: AppColors.green.withOpacity(.4),
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: switcher(item),
          ),
        ),
      ),
    );
  }

  Widget switcher(SettingsEnum item) {
    switch (item) {
      case SettingsEnum.changePassword:
        return const ChangePassword();
      case SettingsEnum.changeInfo:
        return const ChangeInfo();
      case SettingsEnum.chamgeIP:
        return const ChangeIp();
      case SettingsEnum.changeLanguage:
        return const ChangeLanguage();
      default:
        return const ChangePassword();
    }
  }

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
              onTap: () => _showDialog(SettingsEnum.changePassword),
            ),
            SettingsItem(
              icon: Assets.icons.userOctagon,
              title: 'Ma’lumotlarni o’zgartirish',
              onTap: () => _showDialog(SettingsEnum.changeInfo),
            ),
            SettingsItem(
              icon: Assets.icons.monitorMobile,
              title: 'IPni o’zgartirish',
              onTap: () => _showDialog(SettingsEnum.chamgeIP),
            ),
            SettingsItem(
              icon: Assets.icons.translate,
              title: 'Til o’zgartirish',
              onTap: () => _showDialog(SettingsEnum.changeLanguage),
            ),
            SettingsItem(
              icon: Assets.icons.infoCircle,
              title: 'Dastur haqida',
              onTap: () => _showDialog(SettingsEnum.about),
            ),
          ],
        ),
      ),
    );
  }
}





