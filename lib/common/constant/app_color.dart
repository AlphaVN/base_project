import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor = Color(0xFF1974D9);
  static const backgroundColor = Color(0xFFFFFFFF);

  static const textBlackColor1 = Color(0xFF0E0E0E);
  static const textBlackColor2 = Color(0xFF252525);
  static const textBlackColor3 = Color(0xFF3F3F3F);

  static const linkColor = Color(0xFF276CC0);

  static const whiteColor1 = Color(0xFFFFFFFF);
  static const whiteColor2 = Color(0xFFEEEEEE);
  static const whiteColor3 = Color(0xFFDEDEDE);

  static const greyColor1 = Color(0xFF5D5D5D);
  static const greyColor2 = Color(0xFF7E7E7E);
  static const greyColor3 = Color(0xFFA1A1A1);
  static const greyColor4 = Color(0xFFBDBDBD);
  static const greyColor5 = Color(0xFFC7C7C7);

  static const redColor1 = Color(0xFFEE1111);
  static const redColor2 = Color(0xFFF82525);
  static const redColor3 = Color(0xFFFA3838);
  static const redColor4 = Color(0xFFFA4F4F);
  static const redColor5 = Color(0xFFF86969);

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;
    final int alpha = color.alpha;

    final Map<int, Color> shades = {
      50: Color.fromARGB(alpha, red, green, blue),
      100: Color.fromARGB(alpha, red, green, blue),
      200: Color.fromARGB(alpha, red, green, blue),
      300: Color.fromARGB(alpha, red, green, blue),
      400: Color.fromARGB(alpha, red, green, blue),
      500: Color.fromARGB(alpha, red, green, blue),
      600: Color.fromARGB(alpha, red, green, blue),
      700: Color.fromARGB(alpha, red, green, blue),
      800: Color.fromARGB(alpha, red, green, blue),
      900: Color.fromARGB(alpha, red, green, blue),
    };

    return MaterialColor(color.value, shades);
  }
}
