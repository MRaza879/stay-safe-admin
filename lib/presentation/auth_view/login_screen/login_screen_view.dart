import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/auth_view/login_screen/layout/body.dart';
class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);
  static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginScreenViewBody(),
      ),
    );
  }
}
