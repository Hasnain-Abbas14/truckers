// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:svg_flutter/svg.dart';
// import 'package:truckerbs_website/screen/website_screen/message_tab/assign_tab/assign_task.dart';
// import 'package:truckerbs_website/screen/website_screen/message_tab/group/group_chat_view.dart';
// import 'package:truckerbs_website/screen/website_screen/message_tab/group/group_tab.dart';
// import 'package:truckerbs_website/screen/website_screen/message_tab/indivitual_chat.dart';
// import 'package:truckerbs_website/screen/website_screen/message_tab/tabs/persnoal_tab.dart';
// import '../../../themes/app_colors.dart';
// import '../../../themes/app_text_styles.dart';
//
// class MessageTabWebsite extends StatefulWidget {
//   const MessageTabWebsite({super.key});
//
//   @override
//   State<MessageTabWebsite> createState() => _MessageTabWebsiteState();
// }
//
// class _MessageTabWebsiteState extends State<MessageTabWebsite> {
//   final List<String> tabText = [
//     'All',
//     'Personal',
//     'Group',
//   ];
//
//   int _currentIndex = 0;
//   bool isGroupUi = false;
//   bool isCreateGroup = false;
//   bool isAssignTask = false;
//   bool isChatActive = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return isCreateGroup == false && isAssignTask==false
//         ?
//
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               width: 368.w,
//               height: 700.h,
//               child:
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Message',
//                         style: AppTextStyles.boldStyle.copyWith(
//                             color: AppColors.hintColor, fontSize: 16.sp),
//                       ),
//                       const Spacer(),
//                       PopupMenuButton(
//                           color: AppColors.primaryWhite,
//                           splashRadius: 14.r,
//                           onOpened: () {},
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(14.r)),
//                           itemBuilder: (context) {
//                             return [
//                               PopupMenuItem(
//                                 height: 13.h,
//                                 onTap: () {
//                                   setState(() {
//
//                                   });
//                                 },
//                                 child: Text(
//                                   'Start New Chat',
//                                   style: AppTextStyles.poppinsStyle.copyWith(
//                                     color: const Color(0xFF828282),
//                                     fontSize: 18.sp,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ),
//                               PopupMenuItem(
//                                 height: 13.h,
//                                 onTap: () {
//                                   setState(() {
//
//                                   });
//                                 },
//                                 child: Text(
//                                   'Create Group',
//                                   style: AppTextStyles.poppinsStyle.copyWith(
//                                     color: const Color(0xFF828282),
//                                     fontSize: 18.sp,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ),
//                             ];
//                           },
//                           offset: const Offset(0, 30),
//                           surfaceTintColor: AppColors.primaryWhite,
//                           icon:
//                           CircleAvatar(
//                             backgroundColor: AppColors.primaryColor,
//                             radius: 15.r,
//                             child: Icon(
//                               Icons.add,
//                               size: 20.r,
//                               color: AppColors.primaryWhite,
//                             ),
//                           )
//                       ),
//
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: AppColors.primaryWhite,
//                       prefixIcon: const Icon(
//                         Icons.search,
//                         color: AppColors.hintColor,
//                       ),
//                       hintText: 'Search',
//                       hintStyle: AppTextStyles.regularStyle.copyWith(
//                           color: AppColors.hintColor, fontSize: 10.sp),
//                       contentPadding: EdgeInsets.all(10.w),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8.r),
//                         borderSide: BorderSide.none,
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8.r),
//                         borderSide: BorderSide.none,
//                       ),
//                       focusedErrorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8.r),
//                         borderSide: BorderSide.none,
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8.r),
//                         borderSide:
//                         BorderSide(color: Colors.red, width: 1.w),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8.r),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: List.generate(
//                           tabText.length,
//                               (index) => GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 _currentIndex = index;
//                               });
//                             },
//                             child: SizedBox(
//                               width: 118.w,
//                               child: Center(
//                                 child: Text(
//                                   tabText[index].toString(),
//                                   style:
//                                   AppTextStyles.mediumStyle.copyWith(
//                                     color: _currentIndex == index
//                                         ? AppColors.primaryColor
//                                         : AppColors.hintColor,
//                                     fontSize: 16.sp,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       SizedBox(
//                         height: 2.h,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: List.generate(
//                             tabText.length,
//                                 (index) => Container(
//                               width: 118.w,
//                               color: _currentIndex == index
//                                   ? AppColors.primaryColor
//                                   : Colors.transparent,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   _currentIndex == 0 ?
//                   PersonalTabWebsite(
//                     onTapAnyPerson: (userId) {
//                       setState(() {
//                         isChatActive = true;
//                         isGroupUi=false;
//                       });
//                     },
//                   )
//                       : _currentIndex == 1
//                       ? PersonalTabWebsite(onTapAnyPerson: (userId) {
//                     setState(() {
//                       isChatActive = true;
//                       isGroupUi=false;
//                     });
//                   })
//                       : GroupTabWebsite(onTapAnyPerson: (){
//                     setState(() {
//                       isGroupUi =! isGroupUi;
//                       isChatActive = false;
//                     });
//                   })
//                 ],
//               ),
//             ),
//             SizedBox(
//               width: 20.w,
//             ),
//             isChatActive == true
//                 ?
//             IndivitualChat()
//                 :
//             isGroupUi == true
//                 ?
//             GroupChatView(onTapAssignTask: (){
//               setState(() {
//                 isCreateGroup=false;
//                 isChatActive=false;
//                 isGroupUi=false;
//                 isAssignTask=true;
//
//               });
//             },):
//
//             Expanded(
//               child: SizedBox(
//                 width: 764.w,
//                 height: 700.h,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Nothing to show here",
//                       style: TextStyle(
//                           color: AppColors.text33,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 28.sp),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     )
//         : isAssignTask==true && isCreateGroup==false?
//     AssignTask()
//         :SizedBox();
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:truckerbs_website/screen/website_screen/message_tab/assign_tab/assign_task.dart';
import 'package:truckerbs_website/screen/website_screen/message_tab/group/group_chat_view.dart';
import 'package:truckerbs_website/screen/website_screen/message_tab/group/group_tab.dart';
import 'package:truckerbs_website/screen/website_screen/message_tab/indivitual_chat.dart';
import 'package:truckerbs_website/screen/website_screen/message_tab/tabs/persnoal_tab.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class MessageTabWebsite extends StatefulWidget {
  const MessageTabWebsite({super.key});

  @override
  State<MessageTabWebsite> createState() => _MessageTabWebsiteState();
}

class _MessageTabWebsiteState extends State<MessageTabWebsite> {
  final List<String> tabText = ['All', 'Personal', 'Group'];

  int _currentIndex = 0;
  bool isGroupUi = false;
  bool isCreateGroup = false;
  bool isAssignTask = false;
  bool isChatActive = false;

  // ───────── new state ─────────
  final String _currentUserId = FirebaseAuth.instance.currentUser!.uid;
  String? _selectedPeerId;
  String? _selectedPeerName;
  String? _selectedPeerAvatarUrl;
  String? _chatId;

  String _generateChatId(String a, String b) => a.hashCode <= b.hashCode ? '$a\_$b' : '$b\_$a';
  // ────────────────────────────

  @override
  Widget build(BuildContext context) {
    return isCreateGroup == false && isAssignTask == false
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 368.w,
                    height: 700.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Message',
                              style: AppTextStyles.boldStyle.copyWith(color: AppColors.hintColor, fontSize: 16.sp),
                            ),
                            const Spacer(),
                            PopupMenuButton(
                              color: AppColors.primaryWhite,
                              splashRadius: 14.r,
                              onOpened: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                    height: 13.h,
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Text(
                                      'Start New Chat',
                                      style: AppTextStyles.poppinsStyle.copyWith(
                                        color: const Color(0xFF828282),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  PopupMenuItem(
                                    height: 13.h,
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Text(
                                      'Create Group',
                                      style: AppTextStyles.poppinsStyle.copyWith(
                                        color: const Color(0xFF828282),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ];
                              },
                              offset: const Offset(0, 30),
                              surfaceTintColor: AppColors.primaryWhite,
                              icon: CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 15.r,
                                child: Icon(
                                  Icons.add,
                                  size: 20.r,
                                  color: AppColors.primaryWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.primaryWhite,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: AppColors.hintColor,
                            ),
                            hintText: 'Search',
                            hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor, fontSize: 10.sp),
                            contentPadding: EdgeInsets.all(10.w),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide.none,
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide.none,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Colors.red, width: 1.w),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                tabText.length,
                                (index) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                  child: SizedBox(
                                    width: 118.w,
                                    child: Center(
                                      child: Text(
                                        tabText[index].toString(),
                                        style: AppTextStyles.mediumStyle.copyWith(
                                          color: _currentIndex == index ? AppColors.primaryColor : AppColors.hintColor,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            SizedBox(
                              height: 2.h,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: List.generate(
                                  tabText.length,
                                  (index) => Container(
                                    width: 118.w,
                                    color: _currentIndex == index ? AppColors.primaryColor : Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        _currentIndex == 0
                            ? PersonalTabWebsite(
                                onTapAnyPerson: (userId, userName, userImage) {
                                  setState(() {
                                    _selectedPeerId = userId;
                                    _selectedPeerName = userName;
                                    _selectedPeerAvatarUrl = userImage;
                                    _chatId = _generateChatId(_currentUserId, _selectedPeerId!);
                                    isChatActive = true;
                                    isGroupUi = false;
                                  });
                                },
                              )
                            : _currentIndex == 1
                                ? PersonalTabWebsite(
                                    onTapAnyPerson: (userId, userName, userImage) {
                                      setState(() {
                                        _selectedPeerId = userId;
                                        _selectedPeerName = userName;
                                        _selectedPeerAvatarUrl = userImage;
                                        _chatId = _generateChatId(_currentUserId, _selectedPeerId!);
                                      });
                                    },
                                  )
                                : GroupTabWebsite(
                                    onTapAnyPerson: () {
                                      setState(() {
                                        isGroupUi = !isGroupUi;
                                        isChatActive = false;
                                      });
                                    },
                                  ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w),
                  isChatActive
                      ? IndivitualChat(
                          chatId: _chatId!,
                          currentUserId: _currentUserId,
                          peerUserId: _selectedPeerId!,
                          peerName: _selectedPeerName!,
                          peerAvatarUrl: _selectedPeerAvatarUrl!,
                        )
                      : isGroupUi
                          ? GroupChatView(
                              onTapAssignTask: () {
                                setState(() {
                                  isCreateGroup = false;
                                  isChatActive = false;
                                  isGroupUi = false;
                                  isAssignTask = true;
                                });
                              },
                            )
                          : Expanded(
                              child: SizedBox(
                                width: 764.w,
                                height: 700.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Nothing to show here",
                                      style: TextStyle(
                                        color: AppColors.text33,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28.sp,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                ],
              ),
            ],
          )
        : isAssignTask == true && isCreateGroup == false
            ? AssignTask()
            : const SizedBox();
  }
}
