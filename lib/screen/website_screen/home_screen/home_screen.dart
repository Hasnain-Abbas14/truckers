import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/all_widget.dart';


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
          height: MediaQuery.sizeOf(context).height*0.55.h,
          color: const Color(0xffEFEFEF),
          child: Center(
            child:
            Text(
              'Rotating Ad Banner',
              style: AppTextStyles.mulishStyle.copyWith(  color:AppColors.primaryBlack,
                fontSize: 96.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.96,)
            ),
          ),
        ),
        SizedBox(height: 15.h,),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 45.w,vertical: 50.h),
            color: const Color(0xf10F8F8F8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Trucker BS',
                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFFFF0000),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.32,)
                ),
                SizedBox(height: 5.h,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your Trucker ',
                        style: AppTextStyles.bebasStyle.copyWith(    color: const Color(0xFF333333),
                          fontSize: 128.sp,
                          fontWeight: FontWeight.w400,

                          letterSpacing: -0.58,)
                      ),
                      TextSpan(
                        text: 'Community Hub!',
                        style:AppTextStyles.bebasStyle.copyWith( color: const Color(0xFFFF0000),
                          fontSize: 128.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.58,)
                      ),
                    ],
                  ),
                ),
                Text(
                  'Join our team of dedicated drivers and explore new opportunities. We value safety, reliability, and professionalism. Be a part of a company that supports and appreciates its drivers.',
                  style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.63,)
                ),
                SizedBox(height: 30.h,),
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
                    CustomButton(title: "Join the Community",width: MediaQuery.sizeOf(context).width*0.28.w, onTap: (){}),
                  SizedBox(width: 15.w,),
                    Container(
                      height: 70.h,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.w, color: const Color(0xFFFF0000)),
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
                )

              ],
              ),
            ),
            Image.asset(
                width: MediaQuery.sizeOf(context).width*0.35.w,
                "assets/image/home/Group 1000006757.png")
            
          ],
        ),
        ),
        SizedBox(height: 10.h,),
        Center(
          child: Text(
            'Trucking News & Updates',
            textAlign: TextAlign.center,
            style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
              fontSize: 96.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.58,)
          ),
        ),
        SizedBox(height: 10.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w,vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height*0.20.h,
                color: const Color(0xffEFEFEF),
                child: Center(
                  child:
                  Text(
                      'Ad Banner',
                      style: AppTextStyles.mulishStyle.copyWith(  color:AppColors.primaryBlack,
                        fontSize: 38.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.96,)
                  ),
                ),
              ),
              SizedBox(height: 70.h,),
              PicToTheLeftSide(imagePath: "assets/image/home/Rectangle 90.png", title: "Latest Industry News", subtitle: "Autonomous Trucks Set to Revolutionize the Industry", description: "Autonomous trucks are becoming a reality as major companies invest heavily in this technology. With promises of improved efficiency and safety, self-driving trucks are poised to change the logistics landscape. Explore how this innovation is expected to impact the trucking industry and what it means for drivers and companies alike.", buttonText: "Read More", buttonTextTwo: "Share Article ", iconRequired: Icon(Icons.share,color: AppColors.primaryWhite,size: 20,), onTapButton: onTapNew,)
             , SizedBox(height: 50.h,),
              Center(
                child: Text(
                    'Latest TBS TV Episodes',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                      fontSize: 96.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,)
                ),
              ),
              SizedBox(height: 50.h,),
              Container(
                height: MediaQuery.sizeOf(context).height*0.20.h,
                color: const Color(0xffEFEFEF),
                child: Center(
                  child:
                  Text(
                      'Ad Banner',
                      style: AppTextStyles.mulishStyle.copyWith(  color:AppColors.primaryBlack,
                        fontSize: 38.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.96,)
                  ),
                ),
              ),
              SizedBox(height: 70.h,),
              const PicToTheRightSide(imagePath: "assets/image/home/Rectangle 90 (3).png", title: "Catch Up on TBS TV", description: "In this episode, we explore the cutting-edge technologies transforming the trucking industry. Join us as we interview industry leaders and delve into the innovations driving efficiency and safety on the roads. In this episode, we explore the cutting-edge technologies transforming the trucking industry. Join us as we interview industry leaders and delve into the innovations driving efficiency and safety on the roads.In this episode, we explore the cutting-edge technologies transforming.", buttonText: "Subscribe for Updates", buttonTextTwo: "Watch Video", iconRequired: Icon(Icons.play_arrow,color: AppColors.primaryWhite,size: 20,), subtitle: 'The Future of Trucking',)
,
              SizedBox(height: 50.h,),
              Center(
                child: Text(
                    "Connect with Fellow Truckers",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                      fontSize: 96.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,)
                ),
              ),
              SizedBox(height: 50.h,),
              Container(
                height: MediaQuery.sizeOf(context).height*0.20.h,
                color: const Color(0xffEFEFEF),
                child: Center(
                  child:
                  Text(
                      'Ad Banner',
                      style: AppTextStyles.mulishStyle.copyWith(  color:AppColors.primaryBlack,
                        fontSize: 38.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.96,)
                  ),
                ),
              ),
              SizedBox(height: 70.h,),
              PicToTheLeftSide(imagePath: "assets/image/home/Rectangle 90 (1).png", title: "Join the Trucker Community", subtitle: "Connect and Network with Fellow Truckers Nationwide", description: "Connect with fellow truckers across the country. Share your experiences, ask questions, and find support from a network of professionals who understand the challenges and rewards of life on the road. Connect with fellow truckers across the country. Share your experiences, ask questions, and find support.", buttonText: "Share Your Story", buttonTextTwo: "Join Now", iconRequired: Icon(Icons.groups_outlined,color: AppColors.primaryWhite,size: 20,), onTapButton: () {  },)
,
              SizedBox(height: 50.h,),
              Center(
                child: Text(
                    'Find & Bid on Loads',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                      fontSize: 96.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,)
                ),
              ),
              SizedBox(height: 50.h,),
              Container(
                height: MediaQuery.sizeOf(context).height*0.20.h,
                color: const Color(0xffEFEFEF),
                child: Center(
                  child:
                  Text(
                      'Ad Banner',
                      style: AppTextStyles.mulishStyle.copyWith(  color:AppColors.primaryBlack,
                        fontSize: 38.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.96,)
                  ),
                ),
              ),
              SizedBox(height: 70.h,),
              const PicToTheRightSide(imagePath: "assets/image/home/Rectangle 90 (4).png", title: "Contact Shipper", subtitle: "Explore Available Loads and Connect with Shippers", description: "Discover a comprehensive list of available loads waiting to be transported. Our loadboard connects truckers with shippers, providing essential details like load type, weight, and destination. Place bids, negotiate terms, and secure your next haul with ease.", buttonText: "Place a Bid", buttonTextTwo: "View LoadBoard", iconRequired: Icon(Icons.visibility,color: AppColors.primaryWhite,size: 20,))
,

              SizedBox(height: 50.h,),
              Center(
                child: Text(
                    'Stay Safe on the Road',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                      fontSize: 96.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,)
                ),
              ),
              SizedBox(height: 50.h,),
              Container(
                height: MediaQuery.sizeOf(context).height*0.20.h,
                color: const Color(0xffEFEFEF),
                child: Center(
                  child:
                  Text(
                      'Ad Banner',
                      style: AppTextStyles.mulishStyle.copyWith(  color:AppColors.primaryBlack,
                        fontSize: 38.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.96,)
                  ),
                ),
              ),
              SizedBox(height: 70.h,),
               PicToTheLeftSide(imagePath: "assets/image/home/Rectangle 90 (3).png", title: "View Road Report", subtitle: "Stay Informed with Latest Safety Alerts & Updates", description: "Keep up-to-date with critical safety alerts affecting the trucking industry. Our platform provides timely notifications on road hazards, weather conditions, and regulatory changes, helping you make informed decisions and ensuring a safe journey.", buttonText: "Check Danger Zone", buttonTextTwo: "View Alerts", iconRequired: Icon(Icons.visibility,color: AppColors.primaryWhite,size: 20,), onTapButton: () {  },)

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
        )




      ],
    );
  }
}
