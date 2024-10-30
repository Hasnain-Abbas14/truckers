import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/app_list/app_list.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';

import '../../../themes/app_colors.dart';
import '../../../widget/custom_button.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                width: double.infinity.w,
                height: MediaQuery.sizeOf(context).height * 0.9.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:  AssetImage(
                    "assets/website/new/Group 31598.png",

                  ),
                )
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get in Touch with Us',
                    textAlign: TextAlign.center,
                    style:AppTextStyles.bebasStyle.copyWith(color: Colors.white,
                      fontSize: 160.sp,
                      fontWeight: FontWeight.w400,)
                  ),
                ],
              ),
            ),
            Positioned(
              left: 50.w,right: 50.w,
              bottom: -40.h,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 10.h),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x19FF0000),
                      blurRadius: 15,
                      offset: Offset(0, 4),
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/website/tbs_tv_screens/email-svgrepo-com (2) 1.png",height: 30.h,width: 30.w,),
                        SizedBox(width: 10.w,),
                        Text(
                          'support@truckershub.com',
                          style: AppTextStyles.poppinsStyle.copyWith(color: const Color(0xFF828282),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,)
                        ),
                        const Spacer(),
                        Image.asset("assets/website/tbs_tv_screens/phone-rounded-svgrepo-com 1.png",height: 30.h,width: 30.w,),
                        SizedBox(width: 10.w,),
                        Text(
                            'Call Us: 1-800-123-4567',
                            style: AppTextStyles.poppinsStyle.copyWith(color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,)
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/website/tbs_tv_screens/location-1-svgrepo-com 1.png",height: 30.h,width: 30.w,),
                        SizedBox(width: 10.w,),
                        Text(
                            '123 Truckers Lane, Dallas, TX 75001',
                            style: AppTextStyles.poppinsStyle.copyWith(color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 70.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x3F989898),
                      blurRadius: 15.r,
                      offset: const Offset(0, 4),
                      spreadRadius: 4,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Send us your video',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF262626),
                          fontSize: 44.sp,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      height: 15.h,
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
                              Text('First Name',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF828282),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                height: 5.h,
                              ),
                              SizedBox(
                                height: 70.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter first name',
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
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Phone Number',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF828282),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                height: 5.h,
                              ),
                              SizedBox(
                                height: 70.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter phone number',
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
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
                              Text('Email',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF828282),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                height: 5.h,
                              ),
                              SizedBox(
                                height: 70.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter email',
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
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Upload File',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF828282),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                height: 70.h,
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFEFEFEF)),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Upload File',
                                        style: AppTextStyles.mulishStyle.copyWith(
                                          color: const Color(0xFF262626),
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    const Spacer(),
                                    Icon(
                                      Icons.attach_file_outlined,
                                      color: const Color(0xffC4C4C4),
                                      size: 25.r,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),


                    Text('Message',
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
                        hintText: 'Write message here',
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

                    SizedBox(height: 40.h,),
                    CustomButton(title: "Send Message", onTap:(){},width: MediaQuery.sizeOf(context).width*0.27.w,),
                    SizedBox(height: 100.h,),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  shadows:  const [
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
                        'faq’s',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bebasStyle.copyWith(   color: const Color(0xFF333333),
                          fontSize: 96.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.58,)
                      ),
                    ),
                    SizedBox(height: 10.h,),
                  ...List.generate(questions.length, (index)=>   Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                    margin: EdgeInsets.only(bottom: 32.h),
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
                        Expanded(
                          child: Text(
                             questions[index],
                              style: AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF262626),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w600,)
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down_rounded,color: Color(0xffC4C4C4),)

                      ],
                    ),
                  ))


                  ],
                ),
              )

            ],
          ),
        ),
      ],
    );
  }
}
