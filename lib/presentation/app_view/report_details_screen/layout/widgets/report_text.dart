import 'package:flutter/material.dart';
class ReportText extends StatelessWidget {
  double? height;
  double? width;
  double? padding;
  String? text;

  ReportText({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white12,
      height: this.height, //40
      width: this.width,  //200
      decoration: BoxDecoration(
        //color: Colors.white12,
          border: Border.all(width: 2, color: Colors.red)),
      child: Padding(
        padding:  EdgeInsets.all(this.padding??10),
        child: Text(this.text!,style: TextStyle(color: Colors.black87.withOpacity(0.5))),
      ),
    );
  }
}