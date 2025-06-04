import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';

import '../../../widget/custom_footer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
            width: double.infinity.w,
            fit: BoxFit.cover,
            "assets/website/loadboard_overview/Group 31597.png"),
        SizedBox(
          height: 80.h,
        ),
        Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/website/loadboard_overview/Rectangle 91.png",
                    height: MediaQuery.sizeOf(context).height * 0.80.h,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Who We Are',
                            textAlign: TextAlign.right,
                            style: AppTextStyles.bebasStyle.copyWith(
                              color: const Color(0xFF333333),
                              fontSize: 76.sp,
                              fontFamily: 'Bebas Neue',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.58,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                            'At Trucker\'s Based Social Inc., we are committed to empowering the trucking community by providing a platform that connects, informs, and supports truckers across the country. Our mission is to create a space where truckers can find the latest industry news, connect with fellow drivers, and access resources that help them succeed on the road.',
                            textAlign: TextAlign.right,
                            style: AppTextStyles.poppinsStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Our Journey',
                            textAlign: TextAlign.right,
                            style: AppTextStyles.bebasStyle.copyWith(
                              color: const Color(0xFF333333),
                              fontSize: 76.sp,
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
                                text: 'Founded in ',
                                style:AppTextStyles.poppinsStyle.copyWith(color: const Color(0xFF828282),
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w400,)
                              ),
                              TextSpan(
                                text: '1982',
                                style: AppTextStyles.poppinsStyle.copyWith(color: const Color(0xFF262626),
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w600,)
                              ),
                              TextSpan(
                                text:
                                    ', Trucker\'s Based Social Inc. started as a small initiative to bring truckers together online. Over the years, we’ve grown into a comprehensive platform that serves as the go-to resource for drivers nationwide.',
                                style: AppTextStyles.poppinsStyle.copyWith(   color: const Color(0xFF828282),
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w400,)
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Image.asset(
                    "assets/website/loadboard_overview/Rectangle 1624.png",
                    height: MediaQuery.sizeOf(context).height * 0.80.h,
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),

              Container(
                width: double.infinity.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/website/loadboard_overview/Group 31598.png")
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Meet the Team',
                        textAlign: TextAlign.center,
                        style:AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                          fontSize: 96.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.58,)
                      ),
                    ),
SizedBox(height: 20.h,),
                  Stack(clipBehavior: Clip.none,
                      children: [
                        Center(
                          child:
                          Container(
                            width: MediaQuery.sizeOf(context).width*0.25.w,
                            height: MediaQuery.sizeOf(context).height*0.77.h,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21.58.r),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3FCCCCCC),
                                  blurRadius: 19.59,
                                  offset: Offset(0, 5.22),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(21.58.r),
                                  child: Image.asset(
                                      height: MediaQuery.sizeOf(context).height*0.45.h,
                                      width: MediaQuery.sizeOf(context).width*0.45.w,
                                      fit: BoxFit.fill,
                                      "assets/website/new/unsplash_OhKElOkQ3RE.png"),
                                ),
                               Padding(
                                 padding:EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text(
                                         'John Doe, CEO',
                                         style: AppTextStyles.poppinsStyle.copyWith(     color: const Color(0xFF333333),
                                           fontSize: 26.sp,
                                           fontWeight: FontWeight.w500,)
                                     ),
                                     Text(
                                         'With over 20 years of experience in the trucking industry, John leads our team with a passion for innovation and a deep understanding of the challenges faced by truckers.',
                                         style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                           fontSize: 14.sp,
                                           fontWeight: FontWeight.w400,
                                           letterSpacing: -0.63,)
                                     )

                                   ],
                                 ),
                               )

                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50.w,right: 50.w,
                          top: 70.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width*0.25.w,
                                height: MediaQuery.sizeOf(context).height*0.77.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21.58.r),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x3FCCCCCC),
                                      blurRadius: 19.59,
                                      offset: Offset(0, 5.22),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(21.58.r),
                                      child: Image.asset(
                                          height: MediaQuery.sizeOf(context).height*0.45.h,
                                          width: MediaQuery.sizeOf(context).width*0.45.w,
                                          fit: BoxFit.fill,
                                          "assets/website/new/unsplash_OhKElOkQ3RE (1).png"),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'John Doe, CEO',
                                              style: AppTextStyles.poppinsStyle.copyWith(     color: const Color(0xFF333333),
                                                fontSize: 26.sp,
                                                fontWeight: FontWeight.w500,)
                                          ),
                                          Text(
                                              'With over 20 years of experience in the trucking industry, John leads our team with a passion for innovation and a deep understanding of the challenges faced by truckers.',
                                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: -0.63,)
                                          )

                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: MediaQuery.sizeOf(context).width*0.25.w,
                                height: MediaQuery.sizeOf(context).height*0.77.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21.58.r),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x3FCCCCCC),
                                      blurRadius: 19.59,
                                      offset: Offset(0, 5.22),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(21.58.r),
                                      child: Image.asset(
                                          height: MediaQuery.sizeOf(context).height*0.45.h,
                                          width: MediaQuery.sizeOf(context).width*0.45.w,
                                          fit: BoxFit.fill,
                                          "assets/website/new/unsplash_OhKElOkQ3RE (2).png"),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'John Doe, CEO',
                                              style: AppTextStyles.poppinsStyle.copyWith(     color: const Color(0xFF333333),
                                                fontSize: 26.sp,
                                                fontWeight: FontWeight.w500,)
                                          ),
                                          Text(
                                              'With over 20 years of experience in the trucking industry, John leads our team with a passion for innovation and a deep understanding of the challenges faced by truckers.',
                                              style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: -0.63,)
                                          )

                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                SizedBox(height: 150.h,),

                  ],
                ),
              ),

            ],
          ),
        ),
        CustomFooter(),
      ],
    );
  }
}
