import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/app_view/reports_screen/layout/body.dart';

class ReportsScreenView extends StatelessWidget {
  const ReportsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReportsScreenBody(),
    );
  }
}
