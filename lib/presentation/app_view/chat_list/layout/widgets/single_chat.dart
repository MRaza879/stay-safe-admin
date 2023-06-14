import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/app_view/home_screen/layout/body.dart';


class SingleChat extends StatelessWidget {
  const SingleChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 30,
            ),
            title: Text('Muhammad Arsalan',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
            subtitle: Text('Good Morning',style: TextStyle(color: Colors.grey.withOpacity(0.5)),),
            trailing: Text('12:00 Am',style: TextStyle(color: Colors.grey.withOpacity(0.5)),),
          ),
          Divider(
            thickness: 3,
            color: Colors.black.withOpacity(0.3),
          )
        ],
      ),
      onTap: (){HomeScreenBody(newIndex: 6,);},
    );
  }
}