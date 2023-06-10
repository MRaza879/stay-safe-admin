import 'package:flutter/material.dart';

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
            color: Colors.red
          ),),
          subtitle: Text('1 min ago',style: TextStyle(
            color: Colors.green
          ),),
          trailing: InkWell(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text('Track',
                  style: TextStyle(
                    color: Colors.black87
                  ),),
                ),
                height: 30,
                width: 50,
              ),
            ),
          ),

        ),
        Divider(thickness: 3,color: Colors.black.withOpacity(0.3),)
      ],
    );
  }
}
