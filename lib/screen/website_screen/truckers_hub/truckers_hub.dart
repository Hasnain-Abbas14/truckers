import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/all_widget.dart';

class TruckersHub extends StatelessWidget {
  final VoidCallback onTapJoinNow;
  const TruckersHub({super.key, required this.onTapJoinNow});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.primaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                      'Welcome to Trucker\'s Hub: Connect with Fellow Truckers Across the Nation',
                      style: AppTextStyles.museo.copyWith(
                        color: Colors.white,
                        fontSize: 56.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.96,
                      )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Image.asset(
                    height: MediaQuery.sizeOf(context).height * 0.90.h,
                    fit: BoxFit.cover,
                    "assets/website/tbs_tv_screens/Rectangle 1595.png"),
              ],
            ),
          ),
          SizedBox(
            height: 55.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Join the Trucker\'s Community',
                    style: AppTextStyles.bebasStyle.copyWith(
                      color: Color(0xFF333333),
                      fontSize: 48.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Trucker\'s Hub',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Color(0xFFFF0000),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          )),
                      TextSpan(
                          text:
                              ' is an online community designed to connect truckers across the nation. It serves as a platform where truckers can share valuable tips, engage in discussions on industry trends, and offer mutual support. Whether you’re looking for advice on the road, want to join a group of like-minded professionals, or simply need a place to share your experiences, Trucker\'s Hub is the place to build a strong, supportive network with fellow truckers.',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Color(0xFF8E8E93),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  title: "Join the Hub",
                  onTap: () {},
                  width: MediaQuery.sizeOf(context).width * 0.30.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 55.h,
          ),
          Text('Featured Groups',
              style: AppTextStyles.bebasStyle.copyWith(
                color: Color(0xFF333333),
                fontSize: 48.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.58,
              ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Expanded(
                child: VideoWidgetTruckerHub(
                  onTapJoinNow: onTapJoinNow,
                  imagePath: "assets/website/tbs_tv_screens/Rectangle 1576.png",
                    name: "Best Trucker’ Group",
                    description: "Trucker tries to just drive away after crunching...", noOfMember: '33 Members',),
              ),
              SizedBox(width: 10.w,),

              const Expanded(
                child: VideoWidgetTruckerHub(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (1).png",
                    name: "Best Trucker’ Group",
                    description: "Trucker tries to just drive away after crunching...", noOfMember: '33 members',),
              ),
              SizedBox(width: 10.w,),

              const Expanded(
                child: VideoWidgetTruckerHub(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (2).png",
                    name: "Best Trucker’ Group",
                    noOfMember: '33 members',

                    description: "Trucker tries to just drive away after crunching..."),
              ),
              SizedBox(width: 10.w,),

              const Expanded(
                child: VideoWidgetTruckerHub(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (3).png",
                    name: "Best Trucker’ Group",
                   noOfMember: '33 members',
                    description: "Trucker tries to just drive away after crunching..."),
              ),

            ],
          ),
          SizedBox(height: 50.h,),
          Text(
            'Recent Discussions',
            style: AppTextStyles.bebasStyle.copyWith( color: Color(0xFF333333),
              fontSize: 48.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.58,)
          ),
          SizedBox(height: 30.h,),
          Container(
            height: 141.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w,),
            decoration: ShapeDecoration(
              color: Color(0x4CE4E4E4),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Navigating the Challenges of Long-Haul Trucking',
                        style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF262626),
                          fontSize: 24,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,)
                      ),
                      SizedBox(height: 7.h,),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of th',
                        style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF8E8E93),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 141.h,
                  child: VerticalDivider(
                    thickness: 1,width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                ),
                SizedBox(width: 15.w,),
                Text(
                  'View Discussion',
                  textAlign: TextAlign.center,
                  style:AppTextStyles.mulishStyle.copyWith(  color: Color(0xFFFF0000),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,)
                )


              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
            height: 141.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w,),
            decoration: ShapeDecoration(
              color: Color(0x4CE4E4E4),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'Navigating the Challenges of Long-Haul Trucking',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF262626),
                            fontSize: 24,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,)
                      ),
                      SizedBox(height: 7.h,),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of th',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF8E8E93),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 141.h,
                  child: VerticalDivider(
                    thickness: 1,width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                ),
                SizedBox(width: 15.w,),
                Text(
                    'View Discussion',
                    textAlign: TextAlign.center,
                    style:AppTextStyles.mulishStyle.copyWith(  color: Color(0xFFFF0000),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,)
                )


              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
            height: 141.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w,),
            decoration: ShapeDecoration(
              color: Color(0x4CE4E4E4),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'Navigating the Challenges of Long-Haul Trucking',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF262626),
                            fontSize: 24,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,)
                      ),
                      SizedBox(height: 7.h,),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of th',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF8E8E93),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 141.h,
                  child: VerticalDivider(
                    thickness: 1,width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                ),
                SizedBox(width: 15.w,),
                Text(
                    'View Discussion',
                    textAlign: TextAlign.center,
                    style:AppTextStyles.mulishStyle.copyWith(  color: Color(0xFFFF0000),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,)
                )


              ],
            ),
          ),
          SizedBox(height: 30.h,),

          Divider(thickness: 1,height: 1,color: Color(0xFFD0D0D0),),

          SizedBox(height: 30.h,),
          Row(
            children: [
              Text(
                'Connect with Truckers Near You',
                style: AppTextStyles.bebasStyle.copyWith( color: Color(0xFF333333),
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.58,)
              ),
              Spacer(),
              Text(
                'View All Trucker’s List',
                textAlign: TextAlign.center,
                style: AppTextStyles.mulishStyle.copyWith( color: Color(0xFFFF0000),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,)
              )
            ],
          ),
          SizedBox(height: 30,),
          Image.asset(
              fit: BoxFit.cover,
              "assets/image/auth/Group 1000006757.png"),

          SizedBox(height: 30.h,),
          Text(
            'Upcoming Events',
            style: AppTextStyles.bebasStyle.copyWith(color: Color(0xFF333333),
              fontSize: 48.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.58,)
          ),
          SizedBox(height: 30.h,),
          Row(
            children: [
              const Expanded(
                child: VideoWidgetTruckerHubWithLocation(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (4).png",
                  name: "Best Trucker’ Group",
                  description: "Trucker tries to just drive away after crunching...", date: 'September 12, 2024 | 10:00 AM - 4:00 PM', location: 'Dallas Convention Center, Dallas, TX',),
              ),
              SizedBox(width: 10.w,),

              const Expanded(
                child: VideoWidgetTruckerHubWithLocation(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (5).png",
                  name: "Best Trucker’ Group",
                  description: "Trucker tries to just drive away after crunching...", date: 'September 12, 2024 | 10:00 AM - 4:00 PM', location: 'Dallas Convention Center, Dallas, TX',),
              ),
              SizedBox(width: 10.w,),


              const Expanded(
                child: VideoWidgetTruckerHubWithLocation(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (6).png",
                  name: "Best Trucker’ Group",
                  description: "Trucker tries to just drive away after crunching...", date: 'September 12, 2024 | 10:00 AM - 4:00 PM', location: 'Dallas Convention Center, Dallas, TX',),
              ),
              SizedBox(width: 10.w,),


              const Expanded(
                child: VideoWidgetTruckerHubWithLocation(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (7).png",
                  name: "Best Trucker’ Group",
                  description: "Trucker tries to just drive away after crunching...", date: 'September 12, 2024 | 10:00 AM - 4:00 PM', location: 'Dallas Convention Center, Dallas, TX',),
              ),
              SizedBox(width: 10.w,),


              const Expanded(
                child: VideoWidgetTruckerHubWithLocation(imagePath: "assets/website/tbs_tv_screens/Rectangle 1576 (8).png",
                  name: "Best Trucker’ Group",
                  description: "Trucker tries to just drive away after crunching...", date: 'September 12, 2024 | 10:00 AM - 4:00 PM', location: 'Dallas Convention Center, Dallas, TX',),
              ),
              SizedBox(width: 10.w,),



            ],
          ),
          SizedBox(height: 50.h,),
          Text(
              'Essential Resources for Truckers',
              style: AppTextStyles.bebasStyle.copyWith( color: Color(0xFF333333),
                fontSize: 48.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.58,)
          ),
          SizedBox(height: 30.h,),
          Container(
            height: 141.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w,),
            decoration: ShapeDecoration(
              color: Color(0x4CE4E4E4),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'Navigating the Challenges of Long-Haul Trucking',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF262626),
                            fontSize: 24,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,)
                      ),
                      SizedBox(height: 7.h,),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of th',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF8E8E93),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 141.h,
                  child: VerticalDivider(
                    thickness: 1,width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                ),
                SizedBox(width: 15.w,),
                Text(
                    'View Discussion',
                    textAlign: TextAlign.center,
                    style:AppTextStyles.mulishStyle.copyWith(  color: Color(0xFFFF0000),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,)
                )


              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
            height: 141.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w,),
            decoration: ShapeDecoration(
              color: Color(0x4CE4E4E4),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'Navigating the Challenges of Long-Haul Trucking',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF262626),
                            fontSize: 24,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,)
                      ),
                      SizedBox(height: 7.h,),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of th',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF8E8E93),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 141.h,
                  child: VerticalDivider(
                    thickness: 1,width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                ),
                SizedBox(width: 15.w,),
                Text(
                    'View Discussion',
                    textAlign: TextAlign.center,
                    style:AppTextStyles.mulishStyle.copyWith(  color: Color(0xFFFF0000),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,)
                )


              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
            height: 141.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w,),
            decoration: ShapeDecoration(
              color: Color(0x4CE4E4E4),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'Navigating the Challenges of Long-Haul Trucking',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF262626),
                            fontSize: 24,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,)
                      ),
                      SizedBox(height: 7.h,),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of th',
                          style: AppTextStyles.mulishStyle.copyWith(   color: Color(0xFF8E8E93),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 141.h,
                  child: VerticalDivider(
                    thickness: 1,width: 1,
                    color: Color(0xFFD0D0D0),
                  ),
                ),
                SizedBox(width: 15.w,),
                Text(
                    'View Discussion',
                    textAlign: TextAlign.center,
                    style:AppTextStyles.mulishStyle.copyWith(  color: Color(0xFFFF0000),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,)
                )


              ],
            ),
          ),
          SizedBox(height: 30.h,),

        ],
      ),
    );
  }
}
