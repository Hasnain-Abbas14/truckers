import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_colors.dart';

class LoadSecurement extends StatelessWidget {
  final VoidCallback onTapCreatePost;
  const LoadSecurement({super.key, required this.onTapCreatePost});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Contact us',
                      textAlign: TextAlign.center,
                      style:AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                        fontSize: 79.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,)
                    ),
                    const Spacer()
                    ,
                    CustomButton(title: "Create Post", onTap: onTapCreatePost,width: MediaQuery.sizeOf(context).width*0.28.w,),
                  ],
                ),
                SizedBox(height:20.h),
                Container(
                  padding: EdgeInsets.only(right: 30.w),
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
                  child:

                  TextFormField(


                    decoration: InputDecoration(

                      suffixIcon:Padding(
                        padding:  EdgeInsets.all(10.w),
                        child: Image.asset(
                            height: 20.h,
                            width: 20.w,
                            "assets/website/loadboard_overview/filter-list-svgrepo-com (1) 1.png"),
                      ),
                      prefixIcon: Padding(
                        padding:  EdgeInsets.all(10.w),
                        child: Image.asset(
                            height: 20.h,
                            width: 20.w,
                            "assets/website/auth_screen/Combined-Shape.png"),
                      ),
                      hintText: "Search for loads by keyword or location...",
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
                SizedBox(height: 30.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
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
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30.r,
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset("assets/website/tbs_tv_screens/Ellipse 30.png"),
                                ),
                                SizedBox(width: 10.w,),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'John William',
                                      style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w700,)
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '20h .',
                                          style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF828282),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,)
                                        ),
                                        SizedBox(width: 10.w),
                                        Image.asset("assets/website/tbs_tv_screens/location-1-svgrepo-com 1.png",height: 20.h,width: 20.w,),
                                        SizedBox(width: 10.w,),
                                        Text(
                                          '123 Truckers Lane, Dallas, TX 75001',
                                          style: AppTextStyles.poppinsStyle.copyWith(  color: const Color(0xFF828282),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                
                              ],
                            ),
                            SizedBox(height: 20.h,),
                            Text(
                              'Mindset Coaching',
                              style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w400,)
                            ),
                            Text(
                              '#healthcare #fitness #24/7support #mindset #coaching',
                              style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w400,)
                            ),
                            SizedBox(height: 15.h,),
                            Image.asset("assets/website/tbs_tv_screens/Rectangle 1638.png",
                              width: double.infinity.w,
                              fit: BoxFit.cover,),
                            SizedBox(height: 20.h,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                          'Straps',
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
                                              '10',
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
                                          'Chains',
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
                                              '4',
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
                                          'Tarps',
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
                                              '6',
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
                                          'Corners',
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
                                              '10',
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
                                          'Length',
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
                                              '700',
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
                                          'Width',
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
                                              '500',
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
                                          'Height',
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
                                              '300',
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
                            SizedBox(height: 30.h,),
                            const Divider(thickness: 1,height: 1,color: Color(0xffC4C4C4),),
                            const SizedBox(height: 20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/website/new/like-right-svgrepo-com 1.png",
                                  height: 30.h,
                                  width: 30.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Like',
                                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w500,)
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/website/new/comment-lines-2-svgrepo-com (2) 1.png",
                                  height: 30.h,
                                  width: 30.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                    'Comment',
                                    style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/website/new/share-svgrepo-com (5) 1.png",
                                  height: 30.h,
                                  width: 30.w,
                                ),
                                SizedBox(width: 10.w
                                  ,),
                                Text(
                                    'Share',
                                    style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/website/tbs_tv_screens/whatsapp-svgrepo-com (6) 1.png",
                                  height: 30.h,
                                  width: 30.w,
                                ),
                                SizedBox(width: 10.w
                                  ,),
                                Text(
                                    'Send',
                                    style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w500,)
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                    padding: EdgeInsets.all(10.w),
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
                          Text(
                            'Friends',
                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                              fontSize: 36.sp,
                              fontWeight: FontWeight.w500,)
                          ),
                          SizedBox(height: 15.h,),

                     ...List.generate(20, (index)=>      Padding(
                       padding:  EdgeInsets.only(bottom: 12.h),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Stack(
                             children: [
                               CircleAvatar(
                                 radius: 30.r,
                                 backgroundColor: Colors.transparent,
                                 child: Image.asset("assets/website/tbs_tv_screens/Ellipse 30.png"),

                               ),
                               const Positioned(
                                   right: 5,bottom: 3,
                                   child: CircleAvatar(radius: 5,backgroundColor: Color(0xff03D40B),))
                             ],
                           ),
                           SizedBox(width: 10.w,),
                           Text(
                               'John William',
                               style:AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                 fontSize: 26.sp,
                                 fontWeight: FontWeight.w700,)
                           ),
                         ],
                       ),
                     ),)


                        ],
                      ),
                    )

                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
