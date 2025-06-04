// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:truckerbs_website/app_list/app_list.dart';
// import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/overview_tab.dart';
// import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/photos_and_videos.dart';
// import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/ratting_and_review_tab.dart';
// import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/recent_tips.dart';
// import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/stories_tab.dart';
// import 'package:truckerbs_website/themes/app_text_styles.dart';
// import 'package:truckerbs_website/widget/custom_button.dart';
//
// import '../../../themes/app_colors.dart';
//
// class MyAccountScreen extends StatefulWidget {
//   const MyAccountScreen({
//     super.key,
//   });
//
//   @override
//   State<MyAccountScreen> createState() => _MyAccountScreenState();
// }
//
// class _MyAccountScreenState extends State<MyAccountScreen>
//     with SingleTickerProviderStateMixin {
//   int _currentIndex = 0;
//   late TabController _tabController; // Declare a TabController
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(
//       length: accountTabsData.length, // The number of tabs
//       vsync: this,
//     );
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose(); // Dispose of the TabController
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity.w,
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).w,
//       margin: const EdgeInsets.all(20).w,
//       decoration: ShapeDecoration(
//         color: AppColors.primaryWhite,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30).w,
//         ),
//         shadows: [
//           const BoxShadow(
//             color: Color(0x3F989898),
//             blurRadius: 15,
//             offset: Offset(0, 4),
//             spreadRadius: 4,
//           )
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text('My Account',
//               style: AppTextStyles.mulishStyle.copyWith(
//                 color: const Color(0xFF262626),
//                 fontSize: 36.sp,
//                 fontWeight: FontWeight.w700,
//               )),
//           SizedBox(
//             height: 50.h,
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 45.r,
//                 child:
//                     Image.asset("assets/website/auth_screen/Ellipse 129.png"),
//               ),
//               SizedBox(
//                 width: 20.w,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Jasmine Roy',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF262626),
//                               fontSize: 28.sp,
//                               fontWeight: FontWeight.w700,
//                             )),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         const Icon(
//                           Icons.verified,
//                           color: Color(0xff00A3FF),
//                         ),
//                         const Spacer(),
//                         Row(
//                           children: List.generate(
//                               badgesList.length,
//                               (index) => Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                             horizontal: 15)
//                                         .w,
//                                     child: CircleAvatar(
//                                       radius: 28.r,
//                                       child: Image.asset(badgesList[index]),
//                                     ),
//                                   )),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Text('@jasmine_roy',
//                         style: AppTextStyles.mulishStyle.copyWith(
//                           color: const Color(0xFF8E8E93),
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.w500,
//                         )),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const Icon(
//                           Icons.location_on,
//                           color: AppColors.primaryColor,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Text('Layyah, Punjab, Pakistan',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF8E8E93),
//                               fontSize: 18.sp,
//                               fontWeight: FontWeight.w500,
//                             ))
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 8.h,
//           ),
//           Text(
//               'On the road for 20 years, passionate about safety and sharing stories',
//               style: AppTextStyles.mulishStyle.copyWith(
//                 color: const Color(0xFF8E8E93),
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.w500,
//               )),
//           SizedBox(
//             height: 50.h,
//           ),
//           Row(
//             children: List.generate(
//               accountTabsData.length,
//               (index) => GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//                 child: SizedBox(
//                   width: MediaQuery.sizeOf(context).width * 0.16.w,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         accountTabsData[index],
//                         style: AppTextStyles.mulishStyle.copyWith(
//                           color: _currentIndex == index
//                               ? AppColors.primaryColor
//                               : const Color(0xFF8E8E93),
//                           fontSize: 22.sp,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       Divider(
//                         thickness: 1,
//                         color: _currentIndex == index
//                             ? AppColors.primaryColor
//                             : Colors.transparent,
//                         height: 1,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           _currentIndex == 0
//               ? const OverviewTab()
//               : _currentIndex == 1
//                   ? const RecentTips()
//                   : _currentIndex == 2
//                       ? const StoriesTab():
//           _currentIndex == 3
//               ? const PhotosAndVideos()
//                       : const RattingAndReviewTab(),
//         ],
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/app_list/app_list.dart';
import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/overview_tab.dart';
import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/photos_and_videos.dart';
import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/ratting_and_review_tab.dart';
import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/recent_tips.dart';
import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_all_tabs/stories_tab.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import '../../../themes/app_colors.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  String? name;
  String? username;
  String? location;
  String? profileImageUrl;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: accountTabsData.length,
      vsync: this,
    );
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    try {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) return;

      final doc = await FirebaseFirestore.instance.collection('users').doc(userId).get();

      if (doc.exists) {
        final data = doc.data();
        setState(() {
          name = data?['full_name'] ?? '';
          username = data?['full_name'] ?? '';
          location = data?['location'] ?? '';
          profileImageUrl = data?['profile_image_url'] ?? '';
          isLoading = false;
        });
      }
    } catch (e) {
      print("Error fetching profile data: $e");
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Container(
            width: double.infinity.w,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).w,
            margin: const EdgeInsets.all(20).w,
            decoration: ShapeDecoration(
              color: AppColors.primaryWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30).w,
              ),
              shadows: [
                const BoxShadow(
                  color: Color(0x3F989898),
                  blurRadius: 15,
                  offset: Offset(0, 4),
                  spreadRadius: 4,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('My Account',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF262626),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 50.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 45.r,
                      backgroundImage: profileImageUrl != null && profileImageUrl!.isNotEmpty
                          ? NetworkImage(profileImageUrl!)
                          : const AssetImage("assets/website/auth_screen/Ellipse 129.png") as ImageProvider,
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(name ?? '',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                              SizedBox(width: 10.w),
                              const Icon(Icons.verified, color: Color(0xff00A3FF)),
                              const Spacer(),
                              Row(
                                children: List.generate(
                                  badgesList.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15).w,
                                    child: CircleAvatar(
                                      radius: 28.r,
                                      child: Image.asset(badgesList[index]),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text('@${username ?? ''}',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF8E8E93),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              )),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.location_on, color: AppColors.primaryColor),
                              SizedBox(width: 10.w),
                              Text(location ?? '',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF8E8E93),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8.h),
                Text('On the road for 20 years, passionate about safety and sharing stories',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF8E8E93),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(height: 50.h),
                Row(
                  children: List.generate(
                    accountTabsData.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.16.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              accountTabsData[index],
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: _currentIndex == index ? AppColors.primaryColor : const Color(0xFF8E8E93),
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Divider(
                              thickness: 1,
                              color: _currentIndex == index ? AppColors.primaryColor : Colors.transparent,
                              height: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                _currentIndex == 0
                    ? const OverviewTab()
                    : _currentIndex == 1
                        ? const RecentTips()
                        : _currentIndex == 2
                            ? const StoriesTab()
                            : _currentIndex == 3
                                ? const PhotosAndVideos()
                                : const RattingAndReviewTab(),
              ],
            ),
          );
  }
}
