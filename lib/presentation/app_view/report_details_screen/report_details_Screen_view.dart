import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/app_view/report_details_screen/layout/body.dart';

class ReportDetailsScreenView extends StatelessWidget {
  const ReportDetailsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReportDetailsScreenBody(),
    );
  }
}
