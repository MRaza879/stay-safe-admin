import 'package:flutter/material.dart';
import 'package:saty_safe_admin/dashboard/layout/body.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: DashBoardBody(),
      ),
    );
  }
}
