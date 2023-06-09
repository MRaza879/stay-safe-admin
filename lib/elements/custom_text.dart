import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  bool? softwrap;
  int? maxLines;
  TextAlign? textAlign;
  String? fontfamily;

  CustomText({
    this.color,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
    required this.text,
    this.softwrap,
    this.textAlign,
    this.fontfamily
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softwrap,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        decoration: TextDecoration.none,
        color: color,
        fontSize: fontSize??20,
        fontWeight: fontWeight,
        fontFamily: fontfamily
      ),
    );
  }
}
