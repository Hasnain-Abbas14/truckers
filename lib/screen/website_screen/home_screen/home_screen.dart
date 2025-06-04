import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/all_widget.dart';

import '../../../widget/custom_footer.dart';


class HomeScreen extends StatelessWidget {
  final VoidCallback onTapNew;
  const HomeScreen({super.key, required this.onTapNew});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10.h,),
        Container(
          width: double.infinity.w,
          height: 936.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/user/Rectangle 1600.png")),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 369.w,
                height: 80.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(5.r),
                      bottomLeft: Radius.circular(5.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Load Board Solutions.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFFF0000),
                      fontSize: 24.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.h,),
              Text(
                'One Stop Solution\nyour transport\nrequirements',
                style: AppTextStyles.bebasStyle.copyWith(  color: Colors.white,
                  fontSize: 96.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.58,),
              ),
              SizedBox(height: 30.h,),
              Container(
                width: 787.w,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                  shadows: [
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

                    suffixIcon: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFF0000),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4).w),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              'Search',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.mulishStyle.copyWith(color: Colors.white,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,)
                          ),
                        ],
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                          height: 25.h,
                          width: 25.w,
                          "assets/website/auth_screen/Combined-Shape.png"),
                    ),

                    hintText: "Search on TruckersBS",
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
              SizedBox(height: 41.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(title: "Get Started with RoadBarks.",width: 369.w, onTap: (){}),
                  SizedBox(width: 15.w,),
                  Container(
                    width: 310.w,
                    height: 70.h,
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.w, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(5).w,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/image/home/flag-us-svgrepo-com 1.png",height: 25.h,width: 25.w,),
                        SizedBox(width: 10.w,),
                        Text(
                            'United States',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.poppinsStyle.copyWith( color:AppColors.primaryColor,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,)
                        ),
                        SizedBox(width: 10.w,),
                        const Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xff828282),size: 10,)
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w,vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Logistic Features',
                style:AppTextStyles.mulishStyle.copyWith(
                  color: const Color(0xFF828282),
                  fontSize: 24.sp,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
              ),
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                      'Key Features',
                      style: AppTextStyles.bebasStyle.copyWith(   color: const Color(0xFF333333),
                        fontSize: 96.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,)
                  ),
                  Spacer(),
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryColor,
                    size: 16,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 15,
                    child: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 16),
                  )

                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: KeyFeaturesContainer(imagePath: "assets/image/user/Rectangle 1555.png")),
                  Expanded(child: KeyFeaturesContainer(imagePath: "assets/image/user/Rectangle 1557.png")),
                  Expanded(child: KeyFeaturesContainer(imagePath: "assets/image/user/Rectangle 1559.png")),
                ],
              ),
              SizedBox(height: 50.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Amazing Features',
                          style:AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                            fontSize: 24.sp,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.24,)
                        ),
                        Text(
                          'we offer quick & powerful solution for transport',
                          style: AppTextStyles.bebasStyle.copyWith(   color: const Color(0xFF333333),
                            fontSize: 96.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.58,)
                        ),
                        Text(
                          'We provide fast and reliable transport solutions, ensuring seamless logistics with power and precision to keep your business moving efficiently.',
                          style:AppTextStyles.mulishStyle.copyWith(     color: const Color(0xFF828282),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.24,)
                        ),
                        SizedBox(height: 15.h,),
                        Container(
                          width: 369.w,
                          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFF0000),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                          ),
                          child: Center(
                            child: Text(
                              'Explore All Features',
                              textAlign: TextAlign.center,
                              style:AppTextStyles.poppinsStyle.copyWith(     color: Colors.white,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FeaturesContainer(imagePath: "assets/website/auth_screen/tv-svgrepo-com 1.svg", title: "Stay Ahead with RB Studio", subTitle: "In this episode, we explore the cutting-edge technologies transforming the trucking industry. Join us as we interview industry we explore the cutting"),
                            SizedBox(width: 10,),
                            FeaturesContainer(imagePath: "assets/website/auth_screen/load-circle-svgrepo-com 1.svg", title: "Explore Loads, Connect Fast", subTitle: "In this episode, we explore the cutting-edge technologies transforming the trucking industry. Join us as we interview industry we explore the cutting"),

                          ],
                        ),
SizedBox(height: 40.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FeaturesContainer(imagePath: "assets/website/auth_screen/community-group-leader-2-svgrepo-com 1.svg", title: "Tools for the Entire Logistics Industry", subTitle: "In this episode, we explore the cutting-edge technologies transforming the trucking industry. Join us as we interview industry we explore the cutting"),
                            SizedBox(width: 10,),
                            FeaturesContainer(imagePath: "assets/website/auth_screen/auction-bid-svgrepo-com 1.svg", title: "Reliable Freight and Business Opportunities Every Day", subTitle: "In this episode, we explore the cutting-edge technologies transforming the trucking industry."),

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 50.h,),

            ],
          ),
        ),
        SizedBox(height: 40.h,),
        Stack(
          children: [
            Image.asset(
                width:double.infinity.w,
                fit: BoxFit.cover,
                "assets/image/home/Group 1000006757 (1).png"),
            Positioned(
              top: MediaQuery.sizeOf(context).height*0.35.h,
              left: MediaQuery.sizeOf(context).width*0.08.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                Text(
                  'Boost Your Fleet\'s Efficiency!',
                  textAlign: TextAlign.center,
                  style:AppTextStyles.bebasStyle.copyWith(color: Colors.white,
                    fontSize: 60.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.58,)
                ),
                SizedBox(height: 10.h,),
                Text(
                  'Explore Our premium Trucking Services Today',
                  style: AppTextStyles.mulishStyle.copyWith(  color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.58,)
                ),
                SizedBox(height: 10.h,),
                Text(
                  'Upgrade your logistics with our state-of-the-art trucking solutions.\nFrom real-time tracking to fuel-efficient routes, we provide the tools you need to\noptimize your operations and maximize your profits',
                  style: AppTextStyles.mulishStyle.copyWith( color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.58,)
                )

              ],
              ),
            )
          ],
        ),
        SizedBox(height: 50.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w,vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'From Our Blog',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF828282),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.24,)
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),

                  Text(
                      'Latest News',
                      style: AppTextStyles.bebasStyle.copyWith(   color: const Color(0xFF333333),
                        fontSize: 96.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,)
                  ),
                  Spacer(),
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryColor,
                    size: 16,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 15,
                    child: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 16),
                  )

                ],
              ),
              SizedBox(height: 40.h,),
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: NewsContainer(onTapNews:onTapNew,imagePath: "assets/image/user/Rectangle 1555.png")),
                  Expanded(child: NewsContainer(onTapNews:onTapNew,imagePath: "assets/image/user/Rectangle 1557.png")),
                  Expanded(child: NewsContainer(onTapNews:onTapNew,imagePath: "assets/image/user/Rectangle 1559.png")),
                ],
              ),
              SizedBox(height: 50.h),



            ],
          ),
        ),
        SizedBox(height: 50.h,),
        Center(
          child: Text(
              'Community Stories',
              textAlign: TextAlign.center,
              style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                fontSize: 96.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.58,)
          ),
        ),
        SizedBox(height: 50.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w,vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(backgroundColor: AppColors.primaryColor,radius: 15,child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 16),),
                  const Spacer(),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.63,)
                  ),
                  const Spacer(),

                  const CircleAvatar(backgroundColor: AppColors.primaryColor,radius: 15,child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16),),

                ],
              ),
              SizedBox(height: 50.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child: CommunityStoriesWidget(imagePath: "assets/image/home/unsplash_OhKElOkQ3RE.png", name: "Rizqi Assegaf", driverType: "Heavy Driver", timePeriod: "10 Years", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")),
                SizedBox(width: 10.w,),
                const Expanded(child: CommunityStoriesWidget(imagePath: "assets/image/home/unsplash_OhKElOkQ3RE (1).png", name: "Rizqi Assegaf", driverType: "Heavy Driver", timePeriod: "10 Years", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")),
                SizedBox(width: 10.w,),
                const Expanded(child: CommunityStoriesWidget(imagePath: "assets/image/home/unsplash_OhKElOkQ3RE (2).png", name: "Rizqi Assegaf", driverType: "Heavy Driver", timePeriod: "10 Years", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")),
                SizedBox(width: 10.w,),
                const Expanded(child: CommunityStoriesWidget(imagePath: "assets/image/home/unsplash_OhKElOkQ3RE (3).png", name: "Rizqi Assegaf", driverType: "Heavy Driver", timePeriod: "10 Years", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")),
                SizedBox(width: 10.w,),

              ],
            )

              
            ],
          ),
        ),
        CustomFooter(),




      ],
    );
  }
}
