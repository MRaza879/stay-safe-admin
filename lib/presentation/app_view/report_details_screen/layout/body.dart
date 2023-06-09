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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Incident Report',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name'),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green,
                          height: 40,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Name'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Contact Number'),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green,
                          height: 40,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Contact Number'),
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
                        Text('Date'),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green,
                          height: 40,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Date'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Time'),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green,
                          height: 40,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Time'),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Incident Location'),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.green,
                          height: 40,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text('Location'),
                                Spacer(),
                                Icon(Icons.location_on)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Align(child: Text('Incident Details'),alignment: Alignment.topLeft,),
                SizedBox(height:10),
                Expanded(child: Container(
                  color: Colors.green,
                ))
              ],
            ),
          ),
        ))
      ],
    );
  }
}

