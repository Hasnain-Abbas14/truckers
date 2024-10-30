import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';


class SignaturePopUp extends StatelessWidget {

  const SignaturePopUp({super.key,});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: const Color(0xff1B1646),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 1720.w,
          padding: EdgeInsets.all(15.w),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
            ),
            shadows: [
              const BoxShadow(
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
                'Signatures',
                style: AppTextStyles.nunito.copyWith(color: const Color(0xFF030229),
                  fontSize: 66.sp,
                  fontWeight: FontWeight.w600,)
              ),
              SizedBox(height: 20.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Draw',
                    style: AppTextStyles.nunito.copyWith( color: const Color(0xFF949494),
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,)
                  ),
                  SizedBox(width: 30.w,),


                  Text(
                      'Type',
                      style: AppTextStyles.nunito.copyWith( color: const Color(0xFF949494),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,)
                  ),
                  SizedBox(width: 30.w,),

                  Text(
                      'Upload',
                      style: AppTextStyles.nunito.copyWith( color: const Color(0xFF949494),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,)
                  ),
                  SizedBox(width: 30.w,),
                ],
              ),
              SizedBox(height: 15.h,),
              Container(
                height: 320.h,
                decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
              ),
              SizedBox(height: 20.h,),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting ',
                style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,)
              ),
              SizedBox(height: 20.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 396.05.w,
                    height: 80.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8E8E93),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: Center(
                      child: Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(color: Colors.white,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.32,)
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  Container(
                    width: 396.05.w,
                    height: 80.h,
                    decoration: ShapeDecoration(
                      color:AppColors.primaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: Center(
                      child: Text(
                          'Accept and Sign',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(color: Colors.white,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.32,)
                      ),
                    ),
                  ),


                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}