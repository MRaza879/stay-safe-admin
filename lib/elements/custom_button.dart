import 'package:flutter/material.dart';
import 'package:saty_safe_admin/configurations/color_constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTapped;
  final double radius;
  final double? width;
  final double? height;
  final Color? bgColor;

  const CustomButton(
      {super.key,
      this.width = double.infinity,
      this.height,
      required this.buttonText,
      this.bgColor,
      this.onTapped,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 50,
        width: width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: this.bgColor??ColorConstants.kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius))),
            onPressed: onTapped,
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: Colors.white),
            )));
  }
}
