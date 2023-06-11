import 'dart:math';

import 'package:flutter/material.dart';
import 'package:saty_safe_admin/presentation/app_view/report_details_screen/layout/widgets/report_text.dart';

import '../../../../elements/app_logo.dart';
import '../../../../elements/header.dart';

class ReportDetailsScreenBody extends StatelessWidget {
  const ReportDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        Expanded(child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Incident Report',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name',style: TextStyle(color: Colors.red),),
                        SizedBox(height: 10,),
                        ReportText(height: 40,width: 500,text: "John Smith",)
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Contact Number',style: TextStyle(color: Colors.red)),
                        SizedBox(height: 10,),
                        ReportText(height: 40,width: 500,text: "03356576894",)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date',style: TextStyle(color: Colors.red)),
                        SizedBox(height: 10,),
                        ReportText(height: 40,width: 200,text: '11-06-2023',)
                      ],
                    ),
                    SizedBox(width: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Time',style: TextStyle(color: Colors.red)),
                        SizedBox(height: 10,),
                        ReportText(height: 40,width: 200,text: '04:56 pm',)
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Incident Location',style: TextStyle(color: Colors.red)),
                        SizedBox(height: 10,),
                        ReportText(height: 40,width: 500,text: 'Kohat',)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Align(child: Text('Incident Details',style: TextStyle(color: Colors.red)),alignment: Alignment.topLeft,),
                SizedBox(height:10),
                ReportText(height: 220,width: 1200,text: 'Here are the details of the incident',)
              ],
            ),
          ),
        ))
      ],
    );
  }
}

