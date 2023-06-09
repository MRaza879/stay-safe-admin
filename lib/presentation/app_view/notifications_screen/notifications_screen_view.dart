import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/app_view/notifications_screen/layout/body.dart';
class NotificationsScreenView extends StatelessWidget {
  const NotificationsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationsScreenBody(),
    );
  }
}
