import 'package:flutter/material.dart';
import 'package:flutter_alphavn_base/common/constant/app_color.dart';
import 'package:flutter_alphavn_base/common/style/text_style.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.onPress,
    required this.title,
    this.enable = true,
  });

  final VoidCallback? onPress;
  final String title;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 1,
      highlightElevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed: enable ? onPress : null,
      disabledColor: AppColor.greyColor3,
      color: AppColor.primaryColor,
      padding: const EdgeInsets.all(10),
      child: Text(title, style: MyTextStyle.buttonStyle),
    );
  }
}
