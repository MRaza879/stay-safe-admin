import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/auth_view/reset_password/layout/body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);
  static const String routeName = '/resetpassword';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ResetPasswordBody(),
      ),
    );
  }
}