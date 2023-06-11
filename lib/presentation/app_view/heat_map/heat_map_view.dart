import 'package:flutter/material.dart';
import 'layouy/body.dart';

class HeatMapView extends StatelessWidget {
  const HeatMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeatMapBody(),
    );
  }
}
