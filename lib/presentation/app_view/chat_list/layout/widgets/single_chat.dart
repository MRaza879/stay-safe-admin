import 'package:flutter/material.dart';


class SingleChat extends StatelessWidget {
  const SingleChat({
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
          title: Text('Muhammad Arsalan'),
          subtitle: Text('Good Morning'),
        ),
        Divider(
          thickness: 3,
        )
      ],
    );
  }
}