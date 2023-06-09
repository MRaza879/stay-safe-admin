import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/app_view/chat_list/layout/body.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatListBody(),
    );
  }
}
