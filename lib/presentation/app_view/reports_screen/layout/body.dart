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
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(child: Text('Reports',style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 30) ,),alignment: Alignment.topLeft,),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(child: Center(child: Text('#',style: TextStyle(color: Colors.red),),),width: 70,),
                      SizedBox(child: Center(child: Text('Name',style: TextStyle(color: Colors.red)),),width: 180),
                      SizedBox(child: Center(child: Text('Location',style: TextStyle(color: Colors.red)),),width: 180),
                      SizedBox(child: Center(child: Text('Date',style: TextStyle(color: Colors.red)),),width: 180),
                      SizedBox(child: Center(child: Text('contact',style: TextStyle(color: Colors.red)),),width: 180),

                    ],

                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 06,
                      itemBuilder: (context,index){
                        return Report(serialNumber: index+1,name: 'Muhammad Raza',location: 'Karachi',contact: '03234567859',date: '01-01-2023',);
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

