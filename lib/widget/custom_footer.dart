import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 150).w,
          width: 1720.w,
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: ShapeDecoration(
            color: AppColors.primaryWhite,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 1, color: AppColors.borderLight),
              borderRadius: BorderRadius.circular(10).w,
            ),
            shadows: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 15,
                offset: Offset(1, 4),
                spreadRadius: 4,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Stay Informed!',
                textAlign: TextAlign.center,
                style: AppTextStyles.bebasStyle.copyWith(
                  color: AppColors.text33,
                  fontSize: 96.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.58,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                  'Stay updated with the latest news, tips, and opportunities in the trucking industry. No spam,\njust valuable content for our drivers.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: AppColors.text82,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.04,
                  )),
              SizedBox(
                height: 17.h,
              ),
              SizedBox(
                width: 462.w,
                height: 60.h,
                child: const ReusableTextForm(
                  borderColor: AppColors.borderEb,
                  hintText: 'Email address',
                  focusBorderColor: AppColors.primaryColor,
                  prefixIcon: Icon(
                    Icons.mail_outline_rounded,
                    color: AppColors.black0c,
                  ),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Container(
                  width: 462.w,
                  height: 60.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppColors.primaryColor.withOpacity(0.10),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(10).w,
                    ),
                  ),
                  child: Center(
                    child: Text('SUBSCRIBE TO OUR NEWSLETTER',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.18,
                        )),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 86.h,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 150).w,
          width: 1720.w,
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: const BoxDecoration(color: AppColors.containerBg),
          child: Center(
            child: Text('Ad Banner',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: AppColors.primaryBlack,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.40,
                )),
          ),
        ),
        SizedBox(
          height: 86.h,
        ),
        Container(
          width: double.infinity,
          height: 601.h,
          padding:
          const EdgeInsets.symmetric(horizontal: 50, vertical: 50)
              .w,
          decoration: ShapeDecoration(
            color: const Color(0x19FF0000),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 1, color: AppColors.borderLight),
              borderRadius: BorderRadius.circular(10).w,
            ),
            shadows: [
              const BoxShadow(
                color: Color(0x07000000),
                blurRadius: 44,
                offset: Offset(1, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                          height: 113.h,
                          width: 222.w,
                          "assets/image/user/Png red.png"),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                          'Drive Your Future. Power Your Business.\nStream Your Success.',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.interStyle.copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('About',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.primaryBl,
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('About Us',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Features',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('New',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Career',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('FAQ',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Support',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.primaryBl,
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Account',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Support Center',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Feedback',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Contact Us',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Accesbility',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Privacy',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.primaryBl,
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Privacy Policy',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Terms and Coditions',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.text76,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Get our app',
                          style: AppTextStyles.interStyle.copyWith(
                            color: AppColors.primaryBl,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.24,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Image.asset(
                          height: 45.h,
                          width: 135.w,
                          "assets/website/auth_screen/google.png"),
                      SizedBox(
                        height: 15.h,
                      ),
                      Image.asset(
                          height: 45.h,
                          width: 135.w,
                          "assets/website/auth_screen/Apple.png"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              const Divider(
                thickness: 1,
                height: 1,
                color: Color(0xF50606176),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                '© 2024 TRUCKERSBS. All rights reserved.',
                style: AppTextStyles.interStyle.copyWith(
                  color: AppColors.text76,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
