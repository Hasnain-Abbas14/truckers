import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/screen/subordinate_screens/load_managment_subordinate/load_management_subordinate.dart';
import 'package:truckerbs_website/screen/subordinate_screens/message_tab_subordnate/message_tab_subordinate.dart';
import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';
import 'dashboard_subordinate_screen/dashboard_screen_sub_ordinate.dart';


class SubOrdinateHomeScreen extends StatefulWidget {
  const SubOrdinateHomeScreen({super.key});

  @override
  State<SubOrdinateHomeScreen> createState() => _SubOrdinateHomeScreenState();
}

class _SubOrdinateHomeScreenState extends State<SubOrdinateHomeScreen> {
  int _currentIndex = 0;

  final List iconList = [
    'assets/image/home/Category.png',
    'assets/image/home/load-circle-svgrepo-com (3) 3.png',
    'assets/image/home/Document.png',
    'assets/image/home/Activity.png',
  ];
  final List tabList = [
    'Dashboard',
    'Load Management',
    'Documents',
    'Messages',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: AppColors.primaryWhite,
          body: Padding(
    padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
                        const AssetImage('assets/image/home/3 3.png')),
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
                              : AppColors.hintColor,
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
              padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: _currentIndex == 0? const DashBoardSubordinateScreen():
            _currentIndex == 1?const LoadManagementSubordinate():
            _currentIndex == 2?Container():
            _currentIndex == 3?const MessageTabSubordinate()
                : Container(),
          ),
        )
      ],
    ),
          ),
        );
  }
}
