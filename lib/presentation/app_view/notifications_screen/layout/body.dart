import 'package:flutter/material.dart';
import 'package:saty_safe_admin/elements/header.dart';
import 'package:saty_safe_admin/presentation/app_view/notifications_screen/layout/widgets/notification.dart';

import '../../../../elements/app_logo.dart';
class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                Align(child: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30) ,),alignment: Alignment.topLeft,),
                SizedBox(height: 20,),
                ListView.builder(
                    shrinkWrap: true,
                  itemCount: 4,
                    itemBuilder: (context,index){
                  return Notifications();
                })

              ],
            ),
          ),
        ))
      ],
    );
  }
}

