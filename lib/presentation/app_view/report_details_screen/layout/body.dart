import 'dart:math';

import 'package:flutter/material.dart';

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
                        Container(
                          color: Colors.green.withOpacity(0.3),
                          height: 40,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Name',style: TextStyle(color: Colors.black87.withOpacity(0.3))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Contact Number',style: TextStyle(color: Colors.red)),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green.withOpacity(0.3),
                          height: 40,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Contact Number',style: TextStyle(color: Colors.black87.withOpacity(0.3))),
                          ),
                        )
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
                        Container(
                          color: Colors.green.withOpacity(0.3),
                          height: 40,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Date',style: TextStyle(color: Colors.black87.withOpacity(0.3))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Time',style: TextStyle(color: Colors.red)),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green.withOpacity(0.3),
                          height: 40,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Time',style: TextStyle(color: Colors.black87.withOpacity(0.3))),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Incident Location',style: TextStyle(color: Colors.red)),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green.withOpacity(0.3),
                          height: 40,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text('Location',style: TextStyle(color: Colors.black87.withOpacity(0.3))),
                                Spacer(),
                                Icon(Icons.location_on,color: Colors.black,)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Align(child: Text('Incident Details',style: TextStyle(color: Colors.red)),alignment: Alignment.topLeft,),
                SizedBox(height:10),
                Container(
                  color: Colors.green.withOpacity(0.3),
                  width: 1200,
                  height: 220,
                  child: Text('Here are the details of the incident',style: TextStyle(color: Colors.black.withOpacity(0.3)),)
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}

