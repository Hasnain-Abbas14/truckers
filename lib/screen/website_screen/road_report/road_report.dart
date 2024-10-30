import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_text_styles.dart';


class RoadReport extends StatefulWidget {
  const RoadReport({super.key});

  @override
  State<RoadReport> createState() => _RoadReportState();
}

class _RoadReportState extends State<RoadReport> {
  bool isChecked=false;
  bool isCheckedOne=false;
  bool isCheckedTwo=false;
  bool isCheckedThree=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 1720.w,
            height: 700.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: const DecorationImage(
                fit: BoxFit.cover,
                opacity: 1.7,
                image: AssetImage(
                  "assets/website/tbs_tv_screens/Group 31598.png",
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Share Your Experience',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bebasStyle.copyWith(
                    color: Colors.white,
                    fontSize: 150.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Submit stories, report incidents, near misses, or recognize\nfellow drivers.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Colors.white,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
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
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                      'Road Report',
                      style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                        fontSize: 76.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,)
                  ),
                ),
                Text(
                  'Video / Photo File',
                  style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,),
                ),
                SizedBox(height: 5.h,),
                Container(
                  width: 396.05.w,
                  height: 80.h,
                  decoration: ShapeDecoration(
                    color: const Color(0x19FF0000),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(Icons.attach_file_outlined,color: const Color(0xFF262626) ,size: 25.r,),
                      SizedBox(width: 10.w,),
                      Text(
                          'Upload File',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.32,)
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Type of Report',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),

                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start
                              ,children: [
                              Text(
                                  'Story',
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                              const Spacer(),
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

                                      },
                                      child: Text(
                                        '',
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
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColors.text33,
                                ),
                              ),
                            ],
                            ),
                          )

                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'First Name',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),

                            ),
                            child:
                            TextFormField(


                              decoration: InputDecoration(

                                hintText: "Enter first name",
                                enabledBorder:InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor
                                  ),
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),


                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Last Name',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),

                            ),
                            child:
                            TextFormField(


                              decoration: InputDecoration(

                                hintText: "Enter last name",
                                enabledBorder:InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor
                                  ),
                                ),

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Email',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),

                            ),
                            child:
                            TextFormField(


                              decoration: InputDecoration(

                                hintText: "Enter Email",
                                enabledBorder:InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor
                                  ),
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Phone Number',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),

                            ),
                            child:
                            TextFormField(


                              decoration: InputDecoration(

                                hintText: "Enter Phone Number",
                                enabledBorder:InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor
                                  ),
                                ),

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Location',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),

                            ),
                            child:
                            TextFormField(


                              decoration: InputDecoration(

                                hintText: "Choose location",
                                enabledBorder:InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor
                                  ),
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Tag Someone',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),

                            ),
                            child:
                            TextFormField(


                              decoration: InputDecoration(

                                hintText: "@username",
                                enabledBorder:InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor
                                  ),
                                ),

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Where do you want us to tag?',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 4.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                                activeColor:AppColors.primaryColor, // Set active color to red
                              ),
                              SizedBox(width: 15.w
                                ,),
                              Text(
                                  'Instagram',
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                              Spacer(),
                              Checkbox(
                                value: isCheckedOne,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedOne = value ?? false;
                                  });
                                },
                                activeColor:AppColors.primaryColor, // Set active color to red
                              ),
                              SizedBox(width: 15.w
                                ,),
                              Text(
                                  'YouTube',
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isCheckedTwo,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedTwo = value ?? false;
                                  });
                                },
                                activeColor:AppColors.primaryColor, // Set active color to red
                              ),
                              SizedBox(width: 15.w
                                ,),
                              Text(
                                  'Facebook',
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20.h,),
                Text('Description',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: 'Write description here',
                    enabledBorder: InputBorder.none,
                    hintStyle: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF262626),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(
                          color: AppColors.redColor),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(
                          color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(
                          color: AppColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isCheckedThree,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedThree = value ?? false;
                        });
                      },
                      activeColor:AppColors.primaryColor, // Set active color to red
                    ),
                    SizedBox(width: 15.w
                      ,),
                    Expanded(
                      child: Text(
                        'I confirm I own the content and authorize Trucker\'s Based Social Inc. to post it.',
                          style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(
                        'Signature:',
                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w400,)
                    ),
                    SizedBox(width: 10.w,),
                    SizedBox(
                        width: 411.w,
                        child: const Divider(thickness: 1,height: 1, color: Color(0xff000000),)),
                    SizedBox(width: 10.w,),
                    Image.asset("assets/website/loadboard_overview/pen-tool-svgrepo-com (1) 1.png",height: 25.h,width: 25.w,) ,


                  ],
                ),
                SizedBox(height: 20.h,),
                CustomButton(title: "Submit Report", onTap: (){},width:396.w,height: 80.h,),
                SizedBox(height: 20.h,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
