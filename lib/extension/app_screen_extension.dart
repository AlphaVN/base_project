import 'package:flutter_alphavn_base/common/constant/screen_enum.dart';

extension AppScreenExtension on ScreenEnum {
  String get screenPath {
    switch (this) {
      case ScreenEnum.login:
        return '/login';
      case ScreenEnum.register:
        return '/register';
      case ScreenEnum.home:
        return '/';
    }
  }

  String get screenName {
    switch (this) {
      case ScreenEnum.login:
        return 'login';
      case ScreenEnum.register:
        return 'register';
      case ScreenEnum.home:
        return 'home';
    }
  }

  String get screenTitle {
    switch (this) {
      case ScreenEnum.login:
        return 'Đăng Nhập';
      case ScreenEnum.register:
        return 'Đăng Ký';
      case ScreenEnum.home:
        return 'Trang Chủ';
    }
  }
}
