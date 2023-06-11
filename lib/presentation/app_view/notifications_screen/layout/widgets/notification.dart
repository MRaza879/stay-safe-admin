import 'package:flutter/material.dart';
import 'package:saty_safe_admin/elements/small_button.dart';

class Notifications extends StatelessWidget {
  const Notifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 30,
          ),
          title: Text('Muhammad Arsalan shared his his location with you. Track him immediately and help him out. Muhammad Arsalan shared his his location with you.',
          style: TextStyle(
            color: Colors.black87
          ),),
          subtitle: Text('1 min ago',style: TextStyle(
            color: Colors.grey.withOpacity(0.5)
          ),),
          trailing: SmallButton(text: 'Track',height: 40,width: 70,)

        ),
        Divider(thickness: 3,color: Colors.black.withOpacity(0.3),)
      ],
    );
  }
}
