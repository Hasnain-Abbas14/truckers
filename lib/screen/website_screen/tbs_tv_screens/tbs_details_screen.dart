import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/widget/all_widget.dart';

import '../../../../themes/app_text_styles.dart';
import '../../../../widget/custom_button.dart';


class TbsDetailsScreen extends StatefulWidget {
  const TbsDetailsScreen({super.key});

  @override
  State<TbsDetailsScreen> createState() => _TbsDetailsScreenState();
}

class _TbsDetailsScreenState extends State<TbsDetailsScreen> {
  bool isCommentOn=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width*0.70.w,
                child: Column(
                  children: [
                    Container(

                      padding: EdgeInsets.all(20.w),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        shadows: const [
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
                          Text(
                              'Trucker tries to just drive away after crunching luxury car at fuel island',
                              style:AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                                fontSize: 48.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.58,)
                          ),
                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                  'TRUCKING NEWS',
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,)
                              ),
                              SizedBox(width: 15.w,),
                              Text(
                                  '16 hours ago',
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,)
                              )
                            ],
                          ),
                          SizedBox(height: 25.h,),
                          Image.asset(
                              height: MediaQuery.sizeOf(context).height*0.74,
                              fit: BoxFit.cover,
                              "assets/website/new/Rectangle 1570.png"),
                          SizedBox(height: 25.h,),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: '\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                    style:AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF8E8E93),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                                TextSpan(
                                    text: '\n\nHeading 1\n',
                                    style:AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF262626),
                                      fontSize: 32.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                TextSpan(
                                    text: '\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                    style:AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF8E8E93),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                                TextSpan(
                                    text: '\n\nHeading 2\n',
                                    style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                      fontSize: 32.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                TextSpan(
                                    text: '\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                    style:AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF8E8E93),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                                TextSpan(
                                    text: '\n\nHeading 3\n',
                                    style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                      fontSize: 32.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                TextSpan(
                                    text: '\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                    style:AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF8E8E93),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                  height: MediaQuery.sizeOf(context).height*0.35.h,
                                  fit: BoxFit.cover,
                                  "assets/website/new/Rectangle 1570.png"),
                              SizedBox(width: 10.w
                                ,),
                              Expanded(
                                child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                    style: AppTextStyles.mulishStyle.copyWith(     color: const Color(0xFF8E8E93),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        shadows: const [
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
                        children: [

                          Image.asset("assets/website/new/like-right-svgrepo-com 1.png",height: 40.h,width: 40.w,),
                          SizedBox(width: 10.w,),
                          Text(
                              'Like',
                              style: AppTextStyles.mulishStyle.copyWith(     color: const Color(0xFF8E8E93),
                                fontSize: 36.sp,
                                fontWeight: FontWeight.w500,)
                          ),
                          const Spacer(),
                          Image.asset("assets/website/new/comment-lines-2-svgrepo-com (2) 1.png",height: 40.h,width: 40.w,),
                          SizedBox(width: 10.w,),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                isCommentOn=!isCommentOn;
                              });
                            },
                            child: Text(
                                'Comment',
                                style: AppTextStyles.mulishStyle.copyWith(     color: const Color(0xFF8E8E93),
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w500,)
                            ),
                          ),
                          const Spacer(),
                          Image.asset("assets/website/new/share-svgrepo-com (5) 1.png",height: 40.h,width: 40.w,),
                          SizedBox(width: 10.w,),
                          Text(
                              'Share',
                              style: AppTextStyles.mulishStyle.copyWith(     color: const Color(0xFF8E8E93),
                                fontSize: 36.sp,
                                fontWeight: FontWeight.w500,)
                          ),
                          const Spacer(),
                          Image.asset("assets/website/new/whatsapp-svgrepo-com (6) 1.png",height: 40.h,width: 40.w,),
                          SizedBox(width: 10.w,),
                          Text(
                              'Send',
                              style: AppTextStyles.mulishStyle.copyWith(     color: const Color(0xFF8E8E93),
                                fontSize: 36.sp,
                                fontWeight: FontWeight.w500,)
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 30.h,),
                   isCommentOn==true? Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'Leave your Comment here',
                            style:AppTextStyles.bebasStyle.copyWith(  color: const Color(0xFF333333),
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.58,)
                        ),
                        SizedBox(height: 30.h,),
                        Container(
                          height: 80.h,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x3F989898),
                                blurRadius: 15,
                                offset: Offset(0, 4),
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80.h,
                                child: const VerticalDivider(
                                  thickness: 1,width: 1,
                                  color: Color(0xFFD5D5D5),
                                ),
                              ),
                              SizedBox(width: 15.w,),
                              Text(
                                  'Post Comment',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFFFF0000),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,)
                              )

                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: const Color(0x4CE4E4E4),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child:Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: Colors.transparent,child: Image.asset("assets/website/photos/Rectangle 1625.png"),
                                  ),
                                  SizedBox(height: 10.w,),
                                  Text(
                                      'Jessica',
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.27,
                                      )
                                  ),

                                ],
                              ),
                              SizedBox(width: 10.w,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.',
                                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF8E8E93),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.27,)
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Reply',
                                          style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF333333),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.27,)
                                        ),
                                        SizedBox(width: 15.w
                                          ,),
                                        Text(
                                          'a min ago',
                                          style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0x7F18A0FB),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.27,)
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: const Color(0x4CE4E4E4),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child:Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: Colors.transparent,child: Image.asset("assets/website/photos/Rectangle 1626.png"),
                                  ),
                                  SizedBox(height: 10.w,),
                                  Text(
                                      'Jessica',
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.27,
                                      )
                                  ),

                                ],
                              ),
                              SizedBox(width: 10.w,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.',
                                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF8E8E93),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.27,)
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Reply',
                                            style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF333333),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.27,)
                                        ),
                                        SizedBox(width: 15.w
                                          ,),
                                        Text(
                                            'a min ago',
                                            style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0x7F18A0FB),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.27,)
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: const Color(0x4CE4E4E4),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child:Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: Colors.transparent,child: Image.asset("assets/website/photos/Rectangle 1620.png"),
                                  ),
                                  SizedBox(height: 10.w,),
                                  Text(
                                      'Jessica',
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.27,
                                      )
                                  ),

                                ],
                              ),
                              SizedBox(width: 10.w,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.',
                                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF8E8E93),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.27,)
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Reply',
                                            style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF333333),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.27,)
                                        ),
                                        SizedBox(width: 15.w
                                          ,),
                                        Text(
                                            'a min ago',
                                            style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0x7F18A0FB),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.27,)
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: const Color(0x4CE4E4E4),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child:Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: Colors.transparent,child: Image.asset("assets/website/photos/Rectangle 1623.png"),
                                  ),
                                  SizedBox(height: 10.w,),
                                  Text(
                                      'Jessica',
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.27,
                                      )
                                  ),

                                ],
                              ),
                              SizedBox(width: 10.w,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.',
                                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF8E8E93),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.27,)
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Reply',
                                            style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF333333),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.27,)
                                        ),
                                        SizedBox(width: 15.w
                                          ,),
                                        Text(
                                            'a min ago',
                                            style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0x7F18A0FB),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.27,)
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ):const SizedBox(),

                  ],
                ),
              ),
              SizedBox(width: 30.w,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(

                      padding: EdgeInsets.all(20.w)  ,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F989898),
                            blurRadius: 15,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Expanded(child: Divider(thickness: 1,height: 1,color: AppColors.primaryColor,)),
                              SizedBox(width: 8.w,),
                              Text(
                                  'The Latest Trucking News',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.40,)
                              ),
                              SizedBox(width: 8.w,),
                              const Expanded(child: Divider(thickness: 1,height: 1,color: AppColors.primaryColor,)),

                            ],
                          ),
                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Trucker tries to just drive away after crunching luxury car at fuel island',
                                        style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'TRUCKING NEWS',
                                            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,)
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                            '16 hours ago',
                                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Image.asset(
                                  width: MediaQuery.sizeOf(context).width*0.10.w,
                                  "assets/website/new/Rectangle 1560.png"),

                            ],
                          ),

                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Trucker tries to just drive away after crunching luxury car at fuel island',
                                        style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'TRUCKING NEWS',
                                            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,)
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                            '16 hours ago',
                                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Image.asset(
                                  width: MediaQuery.sizeOf(context).width*0.10.w,
                                  "assets/website/new/Rectangle 1561.png"),

                            ],
                          ),

                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Trucker tries to just drive away after crunching luxury car at fuel island',
                                        style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'TRUCKING NEWS',
                                            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,)
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                            '16 hours ago',
                                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Image.asset(
                                  width: MediaQuery.sizeOf(context).width*0.10.w,
                                  "assets/website/new/Rectangle 1562.png"),

                            ],
                          ),


                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Trucker tries to just drive away after crunching luxury car at fuel island',
                                        style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'TRUCKING NEWS',
                                            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,)
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                            '16 hours ago',
                                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Image.asset(
                                  width: MediaQuery.sizeOf(context).width*0.10.w,
                                  "assets/website/new/Rectangle 1564.png"),

                            ],
                          ),


                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Trucker tries to just drive away after crunching luxury car at fuel island',
                                        style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'TRUCKING NEWS',
                                            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,)
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                            '16 hours ago',
                                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Image.asset(
                                  width: MediaQuery.sizeOf(context).width*0.10.w,
                                  "assets/website/new/Rectangle 1565.png"),

                            ],
                          ),


                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Trucker tries to just drive away after crunching luxury car at fuel island',
                                        style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'TRUCKING NEWS',
                                            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,)
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                            '16 hours ago',
                                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Image.asset(
                                  width: MediaQuery.sizeOf(context).width*0.10.w,
                                  "assets/website/new/Rectangle 1570.png"),

                            ],
                          ),

                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Trucker tries to just drive away after crunching luxury car at fuel island',
                                        style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'TRUCKING NEWS',
                                            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,)
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                            '16 hours ago',
                                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Image.asset(
                                  width: MediaQuery.sizeOf(context).width*0.10.w,
                                  "assets/website/new/Rectangle 1566.png"),

                            ],
                          ),




                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Container(
                      height: 879.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30).r,
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F989898),
                            blurRadius: 15,
                            offset: Offset(0, 4),
                            spreadRadius: 4,
                          )
                        ],
                      ),
                      child: Center(
                        child:Text(
                            'ADS \nSPACE',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFFC4C4C4),
                              fontSize: 96.sp,
                              fontWeight: FontWeight.w400,)
                        ) ,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 30.h,),


        ],
      ),
    );
  }
}
