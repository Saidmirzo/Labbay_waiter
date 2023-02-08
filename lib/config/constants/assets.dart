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

 
  
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get desertBg => "$basePath/desert_bg.png";

  String get loginBg => "$basePath/login_bg.png";

  String get pinCodeBg => "$basePath/pin_code_bg.png";


  
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');

  String get video1 => "$basePath/1.mp4";

 
}
