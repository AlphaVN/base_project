import 'package:flutter/material.dart';
import 'package:flutter_alphavn_base/common/constant/app_color.dart';
import 'package:flutter_alphavn_base/common/style/text_style.dart';

class InputIcon extends StatelessWidget {
  const InputIcon({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.controller,
  });

  final TextEditingController? controller;
  final String hint;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: MyTextStyle.inputStyle,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hint,
        hintStyle: MyTextStyle.hintStyle,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.greyColor5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
        ),
        prefixIconColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return AppColor.primaryColor;
          }
          if (states.contains(MaterialState.error)) {
            return AppColor.redColor3;
          }
          return AppColor.greyColor5;
        }),
      ),
    );
  }
}
