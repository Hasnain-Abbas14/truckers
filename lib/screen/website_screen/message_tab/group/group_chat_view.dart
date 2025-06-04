import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_text_styles.dart';

class GroupChatView extends StatefulWidget {
  final VoidCallback onTapAssignTask;
  const GroupChatView({super.key, required this.onTapAssignTask});

  @override
  State<GroupChatView> createState() => _GroupChatViewState();
}

class _GroupChatViewState extends State<GroupChatView> {
  bool isDetails=false;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(

              height: 839.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 25.r,
                              backgroundImage: const AssetImage(
                                  "assets/image/user/image.png"),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'John Carlio',
                                  style: AppTextStyles
                                      .regularStyle
                                      .copyWith(
                                      color: AppColors
                                          .primaryBlack,
                                      fontSize: 16.sp),
                                ),
                                Text(
                                  'Online',
                                  style: AppTextStyles
                                      .regularStyle
                                      .copyWith(
                                      color:
                                      AppColors.hintColor,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                            const Spacer(),
                            SvgPicture.asset("assets/image/auth/truck-driver-svgrepo-com 1.svg"),
                            SizedBox(
                              width: 15.w,
                            ),
                            const Icon(
                              Icons.call,
                              color: AppColors.hintColor,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            const Icon(
                              Icons.videocam_rounded,
                              color: AppColors.hintColor,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            PopupMenuButton(
                                color: AppColors.primaryWhite,
                                splashRadius: 14.r,
                                onOpened: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.r)),
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      height: 13.h,
                                      onTap: () {
                                        setState(() {

                                        });
                                      },
                                      child: Text(
                                        'Share Group Link',
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
                                        setState(() {

                                        });
                                      },
                                      child: Text(
                                        'Delete Group',
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
                                icon:
                                Icon(
                                  Icons.more_vert,
                                  color: AppColors.hintColor,
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 192.w,
                              padding: EdgeInsets.all(10.r),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16.r),
                                    topRight: Radius.circular(16.r),
                                    bottomRight:
                                    Radius.circular(16.r),
                                  ),
                                  color: AppColors.primaryColor),
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Lorem Ipsum is simply ',
                                    style: AppTextStyles.regularStyle
                                        .copyWith(
                                        color: AppColors
                                            .primaryWhite,
                                        fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 352.w,
                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16.r),
                                    topRight: Radius.circular(16.r),
                                    bottomRight:
                                    Radius.circular(16.r),
                                  ),
                                  color: AppColors.primaryColor),
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color: AppColors.primaryWhite,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        CircleAvatar(
                          radius: 25.r,
                          backgroundImage: const AssetImage(
                              "assets/image/user/image.png"),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 140.h,
                              width: 250.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(15.r),
                                  color: AppColors.hintColor),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 140.h,
                              width: 250.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(15.r),
                                  color: AppColors.hintColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 192.w,
                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16.r),
                                    topRight: Radius.circular(16.r),
                                    bottomRight:
                                    Radius.circular(16.r),
                                  ),
                                  color: AppColors.primaryColor),
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color: AppColors.primaryWhite,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        CircleAvatar(
                          radius: 25.r,
                          backgroundImage: const AssetImage(
                              "assets/image/user/image.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              height: 48.h,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(16.r),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.only(
                                        left: 10.w,
                                        top: 10.h),
                                    hintText: 'Say Something....',
                                    hintStyle: TextStyle(
                                        fontWeight:
                                        FontWeight.normal,
                                        fontSize: 18.sp,
                                        color: Colors.grey),
                                    prefixIcon:
                                    PopupMenuButton(
                                        color: AppColors.primaryWhite,
                                        splashRadius: 14.r,
                                        onOpened: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(14.r)),
                                        itemBuilder: (context) {
                                          return [
                                            PopupMenuItem(
                                              height: 13.h,
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Text(
                                                'Upload File',
                                                style: AppTextStyles.poppinsStyle.copyWith(
                                                  color: const Color(0xFF828282),
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            PopupMenuItem(
                                              height: 13.h,
                                              onTap:widget.onTapAssignTask,
                                              child: Text(
                                                'Assign Task',
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
                                        icon:
                                        Icon(
                                            size: 23.r,
                                            Icons.add_circle_outline_rounded,
                                            color: Colors.grey)
                                    ),


                                    suffixIcon: GestureDetector(
                                        child: Icon(
                                            size: 23.r,
                                            Icons
                                                .emoji_emotions_outlined,
                                            color: Colors.grey)),
                                    border: InputBorder.none),
                              )),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                              'assets/image/tutor/send.svg',
                              color: AppColors.primaryColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          Container(
            width: 416.w,
            height: 809.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
              shadows: [
                BoxShadow(
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
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/website/auth_screen/Ellipse 129.png"),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'John William',
                        style: TextStyle(
                          color: Color(0xFF262626),
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Divider(thickness: 1,height: 1,color: Color(0xFFD7D7D7),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Tasks',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        width: 371.w,
                        height: 56.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F989898),
                              blurRadius: 15,
                              offset: Offset(0, 4),
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Task name here',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isDetails=!isDetails;
                                });
                              },
                              child: Container(
                                width: 80.w,
                                height: 30.h,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFEC73),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'In Progress',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Visibility(
                          visible: isDetails,
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.80,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Dispatched:',
                                    style: TextStyle(
                                      color: Color(0xFF686868),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 12-10-2024',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.80,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Deliver:',
                                        style: TextStyle(
                                          color: Color(0xFF686868),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 14-10-2024',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 73.w,
                                height: 20.h,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Color(0xFFFF0000)),
                                    borderRadius: BorderRadius.circular(2.r),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel Task',
                                    style: TextStyle(
                                      color: Color(0xFFFF0000),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Container(
                                width: 59.w,
                                height: 20.h,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFF0000),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.r)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Track',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )


                            ],
                          )
                        ],
                      ))

                    ],
                  ),
                )


              ],
            ),
          )

        ],
      ),
    );
  }
}
