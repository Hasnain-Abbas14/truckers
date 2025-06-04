import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_text_styles.dart';


class GroupTabWebsite extends StatefulWidget {
  final VoidCallback onTapAnyPerson;
  const GroupTabWebsite({super.key, required this.onTapAnyPerson});

  @override
  State<GroupTabWebsite> createState() => _GroupTabWebsiteState();
}

class _GroupTabWebsiteState extends State<GroupTabWebsite> {
  final List picList = [
    'assets/image/user/img & bg (3).png',
    'assets/image/user/img & bg (4).png',
    'assets/image/user/img & bg (5).png',
    'assets/image/user/img & bg (6).png',
    'assets/image/user/img & bg (7).png',
    'assets/image/user/img & bg (8).png',
  ];

  final List nameList = [
    'Robert Bacins',
    'Robert Bacins',
    'Robert Bacins',
    'Robert Bacins',
    'Robert Bacins',
    'Robert Bacins',
  ];
  final List contentList = [
    'Lorem Ipsum is simply dummy\ntext of the printing ',
    'Lorem Ipsum is simply dummy\ntext of the printing ',
    'Lorem Ipsum is simply dummy\ntext of the printing ',
    'Lorem Ipsum is simply dummy\ntext of the printing ',
    'Lorem Ipsum is simply dummy\ntext of the printing ',
    'Lorem Ipsum is simply dummy\ntext of the printing ',
  ];

  @override
  Widget build(BuildContext context) {
    return

      Expanded(
        child: ListView(
          children:
          List.generate(
              nameList.length,
                  (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: widget.onTapAnyPerson,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25.r,
                          backgroundImage: AssetImage(picList[index].toString()),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nameList[index].toString(),
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor, fontSize: 16.sp),
                            ),
                            Text(
                              contentList[index].toString(),
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor, fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              )),
        ),
      );
  }
}
