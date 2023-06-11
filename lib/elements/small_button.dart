import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  String? text;
  double? height;
  double? width;
  Color? bgColor;
  SmallButton({
    super.key,
    this.bgColor,
    this.height,
    this.width,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            color: this.bgColor??Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(this.text!),
          ),
          height: this.height!, //40
          width: this.width!, //70
        ),
      ),
    );
  }
}
