import 'package:flutter/material.dart';
import 'package:saty_safe_admin/configurations/color_constants.dart';
import 'package:saty_safe_admin/configurations/res.dart';
import 'package:saty_safe_admin/presentation/auth_view/login_screen/login_screen_view.dart';
import 'package:saty_safe_admin/presentation/auth_view/reset_password/reset_password_view.dart';
import 'package:saty_safe_admin/presentation/app_view/home_screen/home_screen_view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorConstants.kBackgroundColor
      ),
      routes: {
        LoginScreenView.routeName: (context) => const LoginScreenView() ,
        ResetPasswordView.routeName: (context) => const ResetPasswordView(),
        HomeScreenView.routeName: (context) => const HomeScreenView()

      },
        //initialRoute: LoginScreenView.routeName,
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreenView.routeName,
    );
  }
}


