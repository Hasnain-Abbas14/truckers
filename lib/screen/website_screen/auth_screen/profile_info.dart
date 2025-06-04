import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

import '../../../themes/app_colors.dart';

class ProfileInfo extends StatelessWidget {
  final VoidCallback onTapSave;

  const ProfileInfo({super.key, required this.onTapSave});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 715.w,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50).w,
        decoration: const BoxDecoration(
          color: AppColors.primaryWhite,
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 40,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Experience Summary',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF262626),
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10.h,
            ),
            Text('Years of Experience',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Enter your Years of Experience',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Specialization',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: AppColors.hintColor),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Select Specialization',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFFC4C4C4),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff333333),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Endorsements',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Enter your Endorsements',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Company Details',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF262626),
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10.h,
            ),
            Text('Current Employer',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Enter Current Employer',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Company Contact Details',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Enter Company Contact Details',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Equipment Information',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF262626),
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10.h,
            ),
            Text('Truck Type & Model',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color:AppColors.hintColor),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Select Truck Type & Model',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFFC4C4C4),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff333333),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Trailer Types',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color:AppColors.hintColor),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Select Trailer Types',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFFC4C4C4),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff333333),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Maintenance History',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Enter Maintenance History',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Certifications and Awards',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF262626),
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10.h,
            ),
            Text('Safety Certifications',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Safety Certifications',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Driving School',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Driving School',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('Awards & Recognitions',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            ReusableTextForm(
              hintText: 'Awards & Recognitions',
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
                child: CustomButton(
              title: "Save",
              onTap: onTapSave,
              height: 70.h,
            )),
          ],
        ),
      ),
    );
  }
}
