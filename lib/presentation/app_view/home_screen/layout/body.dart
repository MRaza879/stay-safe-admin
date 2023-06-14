import 'package:flutter/material.dart';
import 'package:saty_safe_admin/dashboard/dashboard_view.dart';
import 'package:saty_safe_admin/presentation/app_view/add_subadmin/add_subadmin_view.dart';
import 'package:saty_safe_admin/presentation/app_view/chat_list/chat_list_view.dart';
import 'package:saty_safe_admin/presentation/app_view/chat_screen/chat_screen_view.dart';
import 'package:saty_safe_admin/presentation/app_view/heat_map/heat_map_view.dart';
import 'package:saty_safe_admin/presentation/app_view/home_screen/layout/widget/side_bar.dart';
import 'package:saty_safe_admin/presentation/app_view/report_details_screen/report_details_Screen_view.dart';
import '../../../../configurations/color_constants.dart';
import '../../../../elements/app_logo.dart';
import '../../../../elements/custom_text.dart';
import '../../notifications_screen/notifications_screen_view.dart';
import '../../reports_screen/reports_screen_view.dart';

class HomeScreenBody extends StatefulWidget {
  int? newIndex;
  HomeScreenBody({Key? key,this.newIndex}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  int index = 0;
  List widgets = const [
    DashBoardView(),
    ReportsScreenView(),
    NotificationsScreenView(),
    ReportDetailsScreenView(),
    ChatListView(),
    AddSubAdminView(),
    ChatScreenView(),
    HeatMapView()
  ];
  @override
  Widget build(BuildContext context) {
    if(widget.newIndex!=null){ index=widget.newIndex!;}

    print(index);
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20),
                    color: ColorConstants.kgreyColor,
                  ),
                  child: Row(
                    children: [
                      AppLogo(
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(text: 'Stay Safe')
                    ],
                  ),
                  height: 100,
                ),
                //SizedBox( height: 10),
                Expanded(
                    child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.dashboard,
                            size: 30,
                          ),
                          title: CustomText(text: 'Dashboard'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.report,
                            size: 30,
                          ),
                          title: CustomText(text: 'Reports'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Container(
                        child: ListTile(
                            leading: Icon(
                              Icons.access_time_filled,
                              size: 30,
                            ),
                            title: CustomText(text: 'Notifications'),
                            trailing: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 10,
                              width: 10,
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.dashboard,
                            size: 30,
                          ),
                          title: CustomText(text: 'Report Details'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 4;
                        });
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.chat,
                            size: 30,
                          ),
                          title: CustomText(text: 'Chat'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 5;
                        });
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.map,
                            size: 30,
                          ),
                          title: CustomText(text: 'Add Subadmin'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 6;
                        });
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.messenger,
                            size: 30,
                          ),
                          title: CustomText(text: 'Chat Screen View'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 7;
                        });
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.fmd_good,
                            size: 30,
                          ),
                          title: CustomText(text: 'Heat Map'),
                        ),
                      ),
                    )
                  ],
                ))
              ],
            )),
            Expanded(
              flex: 4,
              child: widgets[index],
              // widget.newIndex!=null?widgets[widget.newIndex!]:widgets[index]
            ),
          ],
        ),
      ),
    );
  }}