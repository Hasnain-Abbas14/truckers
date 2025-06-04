import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_footer.dart';


class PlaceBid extends StatefulWidget {
  const PlaceBid({super.key});

  @override
  State<PlaceBid> createState() => _PlaceBidState();
}

class _PlaceBidState extends State<PlaceBid> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.h,),

          Container(
            padding: EdgeInsets.all(15.w),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFE6E6E6)),
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Flatbed Load - 20 Tons',
                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                          fontSize: 64.sp,
                          fontWeight: FontWeight.w700,)
                    ),
                    const Spacer(),

                  Image.asset(
                        height: 25.h,width: 25.w,
                        "assets/website/loadboard_overview/calendar-svgrepo-com (2) 2 (1).png"),
                    SizedBox(width: 10.w,),
                    Text(
                      'September 12, 2024 | 10:00 AM - 4:00 PM',
                      style:AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,)
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                    style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF8E8E93),
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500,)
                ),
                SizedBox(height: 15.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/website/loadboard_overview/pickup-svgrepo-com 1.png",height:60.h,width:60.w,),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child:Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Pickup Location:  \n',
                              style:AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF8E8E93),
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w500,)
                            ),
                            TextSpan(
                              text: 'Kay Bailey Hutchison Convention Center, 650 S Griffin St, Dallas, TX 75202',
                              style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w500,)
                            ),
                          ],
                        ),
                      )
                    ),

                  ],
                ),
                SizedBox(height: 7.h,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/website/loadboard_overview/pickup-svgrepo-com 2.png",height: 60.h,width: 60.w,),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Delivery Location:  \n',
                              style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF8E8E93),
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w500,)
                            ),
                            TextSpan(
                              text: 'Los Angeles Convention Center, 1201 S Figueroa St, Los Angeles, CA 90015',
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w500,)
                            ),
                          ],
                        ),
                      )
                    ),

                  ],
                ),
                SizedBox(height: 10.h,),
                const Divider(thickness: 1,height: 1,color:  Color(0xFFE1E1E1),),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              'Pickup',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 6.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 8.h),
                            decoration: ShapeDecoration(
                              color: const Color(0x19FF0000),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                            ),
                            child: Center(
                              child:
                              Text(
                                  '25-11-2024',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              'Delivery',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 6.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 8.h),
                            decoration: ShapeDecoration(
                              color: const Color(0x19FF0000),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                            ),
                            child: Center(
                              child:
                              Text(
                                  '25-11-2024',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              'Weight',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 6.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 8.h),
                            decoration: ShapeDecoration(
                              color: const Color(0x19FF0000),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                            ),
                            child: Center(
                              child:
                              Text(
                                  '20 Tons',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              'Load Type',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 6.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 8.h),
                            decoration: ShapeDecoration(
                              color: const Color(0x19FF0000),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                            ),
                            child: Center(
                              child:
                              Text(
                                  'Reefer',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              'Price',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 6.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 8.h),
                            decoration: ShapeDecoration(
                              color: const Color(0x19FF0000),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                            ),
                            child: Center(
                              child:
                              Text(
                                  '\$200',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.h,),

              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            padding: EdgeInsets.all(15.w),
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
                Text(
                  'Bid on load',
                  style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                    fontSize: 64.sp,
                    fontWeight: FontWeight.w700,)
                ),
                SizedBox(height: 35.h,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bid Amount',
                      style:AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w400,)
                    ),
                    Text(
                      'User Budget:  \$200',
                      textAlign: TextAlign.right,
                      style: AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF828282),
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w400,)
                    ),
                  ],
                ),
                SizedBox(height: 14.h,),

                Container(
                  height: 70.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20).w,
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FC8C8C8),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: TextFormField(


                    decoration: InputDecoration(
                      hintText: "Enter bid amount",
                      enabledBorder:InputBorder.none,
                      hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.24,),
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
                SizedBox(height: 13.h,),
                Text(
                  'Equipment Type',
                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF828282),
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w400,)
                ),
                SizedBox(height: 13.h,),
                Container(
                  height: 70.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Flatbed',
                        style:AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w400,)
                      ),
                      const Spacer(),
                      PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              padding: EdgeInsets.zero,
                              height: 30.h,
                              onTap: () {

                              },
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 40),
                                  child:
                                  Text(
                                      'Flatbed',
                                      style:AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                                        fontSize: 36.sp,
                                        fontWeight: FontWeight.w400,)
                                  )
                              ),
                            ),

                          ];
                        },
                        offset: const Offset(0, 30),
                        color: AppColors.primaryWhite,
                        surfaceTintColor: AppColors.primaryWhite,
                        icon:   Icon(
                          Icons.arrow_drop_down,
                          size: 30.r,
                          color: const Color(0xffC4C4C4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.h,),
                Text(
                    'Insurance',
                    style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF828282),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w400,)
                ),
                SizedBox(height: 13.h,),
                Container(
                  height: 70.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'Attach File',
                          style:AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w400,)
                      ),
                   const Spacer(),

                   Icon(Icons.attach_file_outlined,    color: const Color(0xffC4C4C4),     size: 30.r,),
                    ],
                  ),
                ),
                SizedBox(height: 15.h,),
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
                      'Agree with the terms of load',
                      style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w400,)
                    ),
                  ],
                ),
                SizedBox(height: 40.h,),
                CustomButton(title: "Submit", onTap: (){},width: MediaQuery.sizeOf(context).width*0.27.w,),
                SizedBox(height: 60.h,),
              ],
            ),
          ),
          SizedBox(height: 100.h,),
          CustomFooter(),
        ],
      ),
    );
  }
}
