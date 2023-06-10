import 'package:flutter/material.dart';
import 'package:saty_safe_admin/dashboard/layout/widget/subadmin.dart';
import 'package:saty_safe_admin/dashboard/layout/widget/user.dart';
import 'package:saty_safe_admin/elements/header.dart';
class DashBoardBody extends StatelessWidget {
  const DashBoardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: DefaultTabController(
              length: 2,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TabBar(
                      labelStyle: TextStyle(
                        fontSize: 30
                      ),
                      indicatorColor: Colors.black87,
                        tabs: [
                      Tab(child: Text('Users',style: TextStyle(color: Colors.red),),),
                      Tab(child: Text('Sub Admins',style: TextStyle(color: Colors.red),),)
                    ]),
                    SizedBox(height: 20,),
                    Expanded(child: TabBarView(children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(child: Center(child: Text('#',style: TextStyle(color: Colors.red),),),width: 70,),
                              SizedBox(child: Center(child: Text('Name',style: TextStyle(color: Colors.red),),),width: 180),
                              SizedBox(child: Center(child: Text('Email Address',style: TextStyle(color: Colors.red),),),width: 180),
                              SizedBox(child: Center(child: Text('Contact',style: TextStyle(color: Colors.red),),),width: 180),

                            ],

                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 06,
                              itemBuilder: (context,index){
                                return User(name: 'Muhammad Arsalan',contact: '03234534555',email: 'abc@gmail.com',serial:index+1);
                              }
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(child: Center(child: Text('#',style: TextStyle(color: Colors.red)),),width: 70,),
                              SizedBox(child: Center(child: Text('User Name',style: TextStyle(color: Colors.red)),),width: 180),
                              SizedBox(child: Center(child: Text('Email Address',style: TextStyle(color: Colors.red)),),width: 180),

                            ],

                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 06,
                              itemBuilder: (context,index){
                                return SubAdmin(username: 'Muhammad Arsalan',email: 'abc@gmail.com',serial:index+1);
                              }
                          )
                        ],
                      )
                    ]))
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

