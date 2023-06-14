import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/app_view/home_screen/layout/body.dart';


class HomeScreenView extends StatelessWidget {
  static const String routeName = '/homescreen';
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: HomeScreenBody(),
      ),
    );
  }
}


