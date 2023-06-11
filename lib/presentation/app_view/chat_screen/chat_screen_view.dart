import 'package:flutter/material.dart';

import 'layouy/body.dart';
class ChatScreenView extends StatelessWidget {
  const ChatScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatScreenBody(),
    );
  }
}
