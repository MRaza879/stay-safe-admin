import 'package:flutter/material.dart';
import 'package:saty_safe_admin/elements/header.dart';
import 'package:saty_safe_admin/presentation/app_view/chat_list/layout/widgets/single_chat.dart';

class ChatListBody extends StatelessWidget {
  const ChatListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        Expanded(
          child: Container(
            color: Colors.red,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return SingleChat();
                  }),
            ),
          ),
        )
      ],
    );
  }
}

