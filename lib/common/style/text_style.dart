import 'dart:ui';

import 'package:flutter_alphavn_base/common/constant/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  static var titleStyle = GoogleFonts.robotoSlab(
    color: AppColor.textBlackColor1,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static var titleStyle2 = GoogleFonts.kanit(
    color: AppColor.textBlackColor1,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static var noteStyle = GoogleFonts.kanit(
    color: AppColor.textBlackColor3,
    fontSize: 16,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
  );

  static var linkStyle = GoogleFonts.kanit(
    color: AppColor.linkColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static var version = GoogleFonts.kanit(
    color: AppColor.whiteColor1,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static var buttonStyle = GoogleFonts.kanit(
    color: AppColor.whiteColor1,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static var hintStyle = GoogleFonts.kanit(
    color: AppColor.greyColor5,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static var inputStyle = GoogleFonts.kanit(
    color: AppColor.textBlackColor1,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
