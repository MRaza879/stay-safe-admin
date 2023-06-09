import 'package:flutter/material.dart';
import 'package:saty_safe_admin/elements/custom_text.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {required this.buttonText, required this.onPressed, this.textColor,super.key});
  Function onPressed;
  String buttonText;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
        onPressed: () {
          onPressed();
        },
        child: CustomText(
          text: buttonText,
          color: textColor,
        ));
  }
}
