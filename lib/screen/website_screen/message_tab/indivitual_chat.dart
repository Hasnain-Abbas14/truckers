// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:svg_flutter/svg.dart';
//
// import '../../../themes/app_colors.dart';
// import '../../../themes/app_text_styles.dart';
//
//
// class IndivitualChat extends StatelessWidget {
//   const IndivitualChat({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return   Expanded(
//       child: SizedBox(
//         width: 764.w,
//         height: 700.h,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Expanded(
//               child: ListView(
//                 children: [
//                   Row(
//                     crossAxisAlignment:
//                     CrossAxisAlignment.center,
//                     children: [
//                       CircleAvatar(
//                         radius: 25.r,
//                         backgroundImage: const AssetImage(
//                             "assets/image/user/image.png"),
//                       ),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Column(
//                         mainAxisAlignment:
//                         MainAxisAlignment.start,
//                         crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'John Carlio',
//                             style: AppTextStyles
//                                 .regularStyle
//                                 .copyWith(
//                                 color: AppColors
//                                     .primaryBlack,
//                                 fontSize: 16.sp),
//                           ),
//                           Text(
//                             'Online',
//                             style: AppTextStyles
//                                 .regularStyle
//                                 .copyWith(
//                                 color:
//                                 AppColors.hintColor,
//                                 fontSize: 12.sp),
//                           ),
//                         ],
//                       ),
//                       const Spacer(),
//                       const Icon(
//                         Icons.call,
//                         color: AppColors.hintColor,
//                       ),
//                       SizedBox(
//                         width: 15.w,
//                       ),
//                       const Icon(
//                         Icons.videocam_rounded,
//                         color: AppColors.hintColor,
//                       ),
//                       SizedBox(
//                         width: 15.w,
//                       ),
//                       const Icon(
//                         Icons.more_vert,
//                         color: AppColors.hintColor,
//                       ),
//                       SizedBox(
//                         width: 15.w,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20.h),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         width: 192.w,
//                         padding: EdgeInsets.all(10.r),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(16.r),
//                               topRight: Radius.circular(16.r),
//                               bottomRight:
//                               Radius.circular(16.r),
//                             ),
//                             color: AppColors.primaryColor),
//                         child: Row(
//                           crossAxisAlignment:
//                           CrossAxisAlignment.center,
//                           mainAxisAlignment:
//                           MainAxisAlignment.center,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Lorem Ipsum is simply ',
//                               style: AppTextStyles.regularStyle
//                                   .copyWith(
//                                   color: AppColors
//                                       .primaryWhite,
//                                   fontSize: 16.sp),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20.h),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         width: 352.w,
//                         padding: EdgeInsets.all(10.w),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(16.r),
//                               topRight: Radius.circular(16.r),
//                               bottomRight:
//                               Radius.circular(16.r),
//                             ),
//                             color: AppColors.primaryColor),
//                         child: Text(
//                           'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
//                           style: AppTextStyles.regularStyle
//                               .copyWith(
//                               color: AppColors.primaryWhite,
//                               fontSize: 16.sp),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20.h),
//                   CircleAvatar(
//                     radius: 25.r,
//                     backgroundImage: const AssetImage(
//                         "assets/image/user/image.png"),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Row(
//                     mainAxisAlignment:
//                     MainAxisAlignment.end,
//                     children: [
//                       Container(
//                         height: 140.h,
//                         width: 250.w,
//                         decoration: BoxDecoration(
//                             borderRadius:
//                             BorderRadius.circular(15.r),
//                             color: AppColors.hintColor),
//                       ),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Container(
//                         height: 140.h,
//                         width: 250.w,
//                         decoration: BoxDecoration(
//                             borderRadius:
//                             BorderRadius.circular(15.r),
//                             color: AppColors.hintColor),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         width: 192.w,
//                         padding: EdgeInsets.all(10.w),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(16.r),
//                               topRight: Radius.circular(16.r),
//                               bottomRight:
//                               Radius.circular(16.r),
//                             ),
//                             color: AppColors.primaryColor),
//                         child: Text(
//                           'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
//                           style: AppTextStyles.regularStyle
//                               .copyWith(
//                               color: AppColors.primaryWhite,
//                               fontSize: 16.sp),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20.h),
//                   CircleAvatar(
//                     radius: 25.r,
//                     backgroundImage: const AssetImage(
//                         "assets/image/user/image.png"),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding:
//               EdgeInsets.symmetric(horizontal: 15.w),
//               child: Row(
//                 crossAxisAlignment:
//                 CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Container(
//                         height: 48.h,
//                         decoration: ShapeDecoration(
//                           color: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius:
//                             BorderRadius.circular(16.r),
//                           ),
//                         ),
//                         child: TextField(
//                           decoration: InputDecoration(
//                               contentPadding:
//                               EdgeInsets.only(
//                                   left: 10.w,
//                                   top: 10.h),
//                               hintText: 'Say Something....',
//                               hintStyle: TextStyle(
//                                   fontWeight:
//                                   FontWeight.normal,
//                                   fontSize: 18.sp,
//                                   color: Colors.grey),
//                               prefixIcon: GestureDetector(
//                                   child: Icon(
//                                       size: 23.r,
//                                       Icons
//                                           .attach_file_outlined,
//                                       color: Colors.grey)),
//                               suffixIcon: GestureDetector(
//                                   child: Icon(
//                                       size: 23.r,
//                                       Icons
//                                           .emoji_emotions_outlined,
//                                       color: Colors.grey)),
//                               border: InputBorder.none),
//                         )),
//                   ),
//                   SizedBox(width: 10.w),
//                   GestureDetector(
//                     onTap: () {},
//                     child: SvgPicture.asset(
//                         'assets/image/tutor/send.svg',
//                         color: AppColors.primaryColor),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class IndivitualChat extends StatefulWidget {
  final String chatId;
  final String currentUserId;
  final String peerUserId;
  final String peerName;
  final String peerAvatarUrl;

  const IndivitualChat({
    super.key,
    required this.chatId,
    required this.currentUserId,
    required this.peerUserId,
    required this.peerName,
    required this.peerAvatarUrl,
  });

  @override
  State<IndivitualChat> createState() => _IndivitualChatState();
}

class _IndivitualChatState extends State<IndivitualChat> {
  final TextEditingController _messageController = TextEditingController();

  CollectionReference<Map<String, dynamic>> get _messagesRef =>
      FirebaseFirestore.instance.collection('chats').doc(widget.chatId).collection('messages');

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;
    _messagesRef.add({
      'text': text,
      'senderId': widget.currentUserId,
      'receiverId': widget.peerUserId,
      'timestamp': FieldValue.serverTimestamp(),
    });
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 764.w,
        height: 700.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ─────────── Header ───────────
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundImage: NetworkImage(widget.peerAvatarUrl),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.peerName,
                      style: AppTextStyles.regularStyle.copyWith(
                        color: AppColors.primaryBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    // StreamBuilder<DocumentSnapshot>(
                    //   stream: FirebaseFirestore.instance
                    //       .collection('users')
                    //       .doc(widget.peerUserId)
                    //       .snapshots(),
                    //   builder: (context, snap) {
                    //     final online =
                    //         snap.hasData && snap.data!['isOnline'] == true;
                    //     return Text(
                    //       online ? 'Online' : 'Offline',
                    //       style: AppTextStyles.regularStyle.copyWith(
                    //         color: AppColors.hintColor,
                    //         fontSize: 12.sp,
                    //       ),
                    //     );
                    //   },
                    // ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.call, color: AppColors.hintColor),
                SizedBox(width: 15.w),
                const Icon(Icons.videocam_rounded, color: AppColors.hintColor),
                SizedBox(width: 15.w),
                const Icon(Icons.more_vert, color: AppColors.hintColor),
                SizedBox(width: 15.w),
              ],
            ),
            SizedBox(height: 20.h),

            // ─────────── Messages ───────────
            Expanded(
              child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: _messagesRef.orderBy('timestamp').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final docs = snapshot.data!.docs;
                  return ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    itemCount: docs.length,
                    itemBuilder: (context, i) {
                      final msg = docs[i].data();
                      final isMe = msg['senderId'] == widget.currentUserId;
                      final text = msg['text'] ?? '';
                      return Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Row(
                          mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                          children: [
                            if (!isMe) ...[
                              CircleAvatar(
                                radius: 25.r,
                                backgroundImage: NetworkImage(widget.peerAvatarUrl),
                              ),
                              SizedBox(width: 10.w),
                            ],
                            Container(
                              constraints: BoxConstraints(maxWidth: 500.w),
                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: isMe
                                    ? BorderRadius.only(
                                        topLeft: Radius.circular(16.r),
                                        topRight: Radius.circular(16.r),
                                        bottomLeft: Radius.circular(16.r),
                                      )
                                    : BorderRadius.only(
                                        topLeft: Radius.circular(16.r),
                                        topRight: Radius.circular(16.r),
                                        bottomRight: Radius.circular(16.r),
                                      ),
                              ),
                              child: Text(
                                text,
                                style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            if (isMe) SizedBox(width: 10.w),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            // ─────────── Input Bar ───────────
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.w, top: 10.h),
                          hintText: 'Say Something....',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.sp,
                            color: Colors.grey,
                          ),
                          prefixIcon: GestureDetector(
                            child: Icon(
                              Icons.attach_file_outlined,
                              size: 23.r,
                              color: Colors.grey,
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.emoji_emotions_outlined,
                              size: 23.r,
                              color: Colors.grey,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  GestureDetector(
                    onTap: _sendMessage,
                    child: SvgPicture.asset(
                      'assets/image/tutor/send.svg',
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
