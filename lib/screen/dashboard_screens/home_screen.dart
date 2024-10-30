
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/screen/dashboard_screens/report_and_statistics/report_and_statistics.dart';
import 'package:truckerbs_website/screen/dashboard_screens/setting_tab.dart';
import 'package:truckerbs_website/screen/dashboard_screens/task_tab/tasks_tab.dart';
import 'package:truckerbs_website/screen/dashboard_screens/user_tab/user_tab.dart';
import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';
import 'dashboard_screen/dashboard_screen.dart';
import 'message_tab/message_tab.dart';

class HomeScreenDashboard extends StatefulWidget {
  const HomeScreenDashboard({super.key});

  @override
  State<HomeScreenDashboard> createState() => _HomeScreenDashboardState();
}

class _HomeScreenDashboardState extends State<HomeScreenDashboard> {
  int _currentIndex = 0;

  final List iconList = [
    'assets/image/home/Category.png',
    'assets/image/home/Chart.png',
    'assets/image/home/user.png',
    'assets/image/home/Document.png',
    'assets/image/home/file.png',
    'assets/image/home/Activity.png',
    'assets/image/home/Setting.png',
  ];
  final List tabList = [
    'Dashboard',
    'Tasks',
    'Users',
    'Reports & Statistics',
    'Files',
    'Messages',
    'Settings',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: AppColors.primaryWhite,
          body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 218.w,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: 67.h,
                    width: 132.w
                    ,
                    image:
                        AssetImage('assets/image/home/3 3.png')),
            SizedBox(
                  height: 20.h,
                ),
                ListView.builder(
                  itemCount: iconList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      leading:Image(
                        height: 25.h,width: 25.w,
                          color: _currentIndex == index
                              ? AppColors.primaryColor
                              : AppColors.disableIconColor,
                        image: AssetImage(iconList[index].toString()),),
                      title: Text(
                        tabList[index].toString(),
                        style: AppTextStyles.mediumStyle.copyWith(
                          color: _currentIndex == index
                              ? AppColors.primaryColor
                              : AppColors.hintColor,
                          fontSize: 16.sp

                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
            child: _currentIndex == 0? const DashBoardScreen():
            _currentIndex == 1?const TasksTab():
            _currentIndex == 2?const UserTab():
            _currentIndex == 3?const ReportAndStatisticsTab():
            _currentIndex == 4?Container():
            _currentIndex == 5?const MessageTab():
            _currentIndex == 6?const SettingTab()
                : Container(),
          ),
        )
      ],
    ),
          ),
        );
  }
}
