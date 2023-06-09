import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/auth_view/login_screen/login_screen_view.dart';

import '../helper/navigation_helper.dart';
import 'app_logo.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white70
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLogo(height: 90,width: 90,),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello!',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Muhammad Raza'),
              ],
            ),
            Spacer(),
            IconButton(onPressed: (){
              NavigationHelper.pushRoute(
                  context, LoginScreenView.routeName);
            }, icon: Icon(Icons.logout),

              iconSize: 40,
            ),
            Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
