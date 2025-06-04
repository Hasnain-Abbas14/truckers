// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../themes/app_colors.dart';
// import '../../../../themes/app_text_styles.dart';
//
//
// class PersonalTabWebsite extends StatefulWidget {
//   final VoidCallback onTapAnyPerson;
//   const PersonalTabWebsite({super.key, required this.onTapAnyPerson});
//
//   @override
//   State<PersonalTabWebsite> createState() => _PersonalTabWebsiteState();
// }
//
// class _PersonalTabWebsiteState extends State<PersonalTabWebsite> {
//   final List picList = [
//     'assets/image/user/img & bg (3).png',
//     'assets/image/user/img & bg (4).png',
//     'assets/image/user/img & bg (5).png',
//     'assets/image/user/img & bg (6).png',
//     'assets/image/user/img & bg (7).png',
//     'assets/image/user/img & bg (8).png',
//   ];
//
//   final List nameList = [
//     'Robert Bacins',
//     'Robert Bacins',
//     'Robert Bacins',
//     'Robert Bacins',
//     'Robert Bacins',
//     'Robert Bacins',
//   ];
//   final List contentList = [
//     'Lorem Ipsum is simply dummy\ntext of the printing ',
//     'Lorem Ipsum is simply dummy\ntext of the printing ',
//     'Lorem Ipsum is simply dummy\ntext of the printing ',
//     'Lorem Ipsum is simply dummy\ntext of the printing ',
//     'Lorem Ipsum is simply dummy\ntext of the printing ',
//     'Lorem Ipsum is simply dummy\ntext of the printing ',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       Expanded(
//       child: ListView(
//        children:
//         List.generate(
//             nameList.length,
//             (index) => Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     GestureDetector(
//                       onTap: widget.onTapAnyPerson,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           CircleAvatar(
//                             radius: 25.r,
//                             backgroundImage: AssetImage(picList[index].toString()),
//                           ),
//                          SizedBox(
//                             width: 10.w,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 nameList[index].toString(),
//                                 style: AppTextStyles.regularStyle.copyWith(
//                                     color: AppColors.hintColor, fontSize: 16.sp),
//                               ),
//                               Text(
//                                 contentList[index].toString(),
//                                 style: AppTextStyles.regularStyle.copyWith(
//                                     color: AppColors.hintColor, fontSize: 12.sp),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                    SizedBox(
//                       height: 10.h,
//                     ),
//                   ],
//                 )),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_text_styles.dart';

class PersonalTabWebsite extends StatefulWidget {
  final void Function(String userId, String userName, String userImage) onTapAnyPerson;
  const PersonalTabWebsite({super.key, required this.onTapAnyPerson});

  @override
  State<PersonalTabWebsite> createState() => _PersonalTabWebsiteState();
}

class _PersonalTabWebsiteState extends State<PersonalTabWebsite> {
  final CollectionReference _usersRef = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
        stream: _usersRef.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Error loading users'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final docs = snapshot.data!.docs;
          if (docs.isEmpty) {
            return const Center(child: Text('No users found'));
          }

          return ListView(
            children: docs.map((doc) {
              final data = doc.data()! as Map<String, dynamic>;
              final name = data['full_name'] as String? ?? '';
              final content = data['award'] as String? ?? '';
              final picUrl = data['profile_image_url'] as String? ?? '';

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => widget.onTapAnyPerson(doc.id, name, picUrl),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 25.r,
                          backgroundImage: picUrl.isNotEmpty
                              ? NetworkImage(picUrl)
                              : const AssetImage(
                                  'assets/image/user/img & bg (3).png',
                                ) as ImageProvider,
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: AppTextStyles.regularStyle.copyWith(
                                color: AppColors.hintColor,
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              content,
                              style: AppTextStyles.regularStyle.copyWith(
                                color: AppColors.hintColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
