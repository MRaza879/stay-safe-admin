import 'package:flutter/material.dart';

import '../../../../elements/header.dart';

class HeatMapBody extends StatefulWidget {
  const HeatMapBody({Key? key}) : super(key: key);

  @override
  State<HeatMapBody> createState() => _HeatMapBodyState();
}

class _HeatMapBodyState extends State<HeatMapBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header()
      ],
    );
  }
}
