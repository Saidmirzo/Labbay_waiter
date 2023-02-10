abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();

  // ignore: library_private_types_in_public_api

  // ignore: library_private_types_in_public_api
  static _Videos get videos => const _Videos();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get logoLabbay => "$basePath/logo_labbay.svg";

  String get logoLabbayWhite => "$basePath/logo_labbay_white.svg";

  String get iconUser => "$basePath/ic_user.svg";

  String get iconLock => "$basePath/ic_lock.svg";

  String get iconIp => "$basePath/ic_ip.svg";

  String get fingerScan => "$basePath/finger_scan.png";

  String get arrowLeft => "$basePath/arrow_left.svg";

  String get arrowCancel => "$basePath/arrow_cancel.svg";

  String get message => "$basePath/message.svg";

  String get search => "$basePath/ic_search.svg";

  String get lock => "$basePath/ic_lock.svg";

  String get lockBlack => "$basePath/ic_lock_black.svg";

  String get arrowLeft2 => "$basePath/ic_arrow_left.svg";

  String get star => "$basePath/ic_star.svg";
  
  String get shoppingCart => "$basePath/ic_shopping_cart.svg";

  String get logout => "$basePath/ic_logout.svg";

  String get settingLock => "$basePath/ic_settings_lock.svg";

  String get userOctagon => "$basePath/ic_user_octagon.svg";
  
  String get translate => "$basePath/ic_translate.svg";
  
  String get monitorMobile => "$basePath/ic_monitor_mobile.svg";

  String get infoCircle => "$basePath/ic_info_circle.svg";

  String get checkbox => "$basePath/ic_checkbox.svg";

  String get delete => "$basePath/trash.svg";

  String get home => "$basePath/home.svg";

  String get clock => "$basePath/clock.svg";

  String get setting => "$basePath/setting.svg";
 
  
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get desertBg => "$basePath/desert_bg.png";

  String get loginBg => "$basePath/login_bg.png";

  String get pinCodeBg => "$basePath/pin_code_bg.png";

  String get palov => "$basePath/img_palov.png";

  String get regBg => '$basePath/reg_bg.png';

  String get chairs => '$basePath/chairs.png';

  String get osh => '$basePath/osh.png';

  String get ichimlik => '$basePath/ichimlik.png';

  
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');

  String get video1 => "$basePath/1.mp4";

 
}
