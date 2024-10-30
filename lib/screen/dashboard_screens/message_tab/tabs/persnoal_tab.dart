import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_text_styles.dart';


class PersonalTab extends StatefulWidget {
  const PersonalTab({super.key});

  @override
  State<PersonalTab> createState() => _PersonalTabState();
}

class _PersonalTabState extends State<PersonalTab> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
          nameList.length,
          (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(picList[index].toString()),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameList[index].toString(),
                            style: AppTextStyles.regularStyle.copyWith(
                                color: AppColors.hintColor, fontSize: 16),
                          ),
                          Text(
                            contentList[index].toString(),
                            style: AppTextStyles.regularStyle.copyWith(
                                color: AppColors.hintColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )),
    );
  }
}
