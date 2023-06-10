import 'package:flutter/material.dart';


class SingleChat extends StatelessWidget {
  const SingleChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print('chat clicked');},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 30,
            ),
            title: Text('Muhammad Arsalan',style: TextStyle(color: Colors.red),),
            subtitle: Text('Good Morning',style: TextStyle(color: Colors.green),),
          ),
          Divider(
            thickness: 3,
            color: Colors.black.withOpacity(0.3),
          )
        ],
      ),
    );
  }
}