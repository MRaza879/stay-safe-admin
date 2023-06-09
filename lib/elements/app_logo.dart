import 'package:flutter/material.dart';
import '../configurations/res.dart';
class AppLogo extends StatelessWidget {
  const AppLogo({this.height, this.width, super.key});
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Res.kLogo,
        height: height ?? 100,
        width: width ?? 100,
      ),
    );
  }
}







/*

[
const SizedBox(
height: 20,
),
const AppLogo(
height: 120,
width: 120,
),
const SizedBox(
height: 15,
),
CustomText(
text: 'We Ensure Your Safety',
//color: Colors.white,
fontSize: 20,

),
SizedBox(height: 10,),
CustomText(
text: 'Login',
//color: Colors.white,
fontSize: 20,

),

],

















decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(30)
),




gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.topRight,
colors: [Color(0xffAEAE99), Color(0xff963F9A)])
*/
