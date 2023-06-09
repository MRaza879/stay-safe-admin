import 'package:flutter/material.dart';
import 'package:saty_safe_admin/elements/header.dart';

import '../../../../elements/app_logo.dart';
import 'widgets/report.dart';
class ReportsScreenBody extends StatelessWidget {
  const ReportsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        //Divider(thickness: 3,color: Colors.black,),
        Expanded(
          child: Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(child: Text('Reports',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30) ,),alignment: Alignment.topLeft,),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(child: Center(child: Text('#'),),width: 70,),
                      SizedBox(child: Center(child: Text('Name'),),width: 180),
                      SizedBox(child: Center(child: Text('Location'),),width: 180),
                      SizedBox(child: Center(child: Text('Date'),),width: 180),
                      SizedBox(child: Center(child: Text('contact'),),width: 180),

                    ],

                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 06,
                      itemBuilder: (context,index){
                        return Report();
                      }
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

