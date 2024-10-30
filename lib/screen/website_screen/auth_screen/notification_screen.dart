import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';

class NotificationScreen extends StatelessWidget {
  final VoidCallback onTapPayment;
  const NotificationScreen({super.key, required this.onTapPayment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0).w,
      margin: const EdgeInsets.symmetric(horizontal: 40).w,
      decoration: ShapeDecoration(
        color: AppColors.primaryWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30).w,
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
            'Notifications',
            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
              fontSize: 44.sp,
              fontWeight: FontWeight.w700,)
          ),
          SizedBox(height: 40.h,),
          Text(
            'Today',
            style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
              fontSize: 35.sp,
              fontWeight: FontWeight.w700,)
          ),

          SizedBox(height: 18.h,),
          GestureDetector(
            onTap: onTapPayment,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0).w,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 18).w,
              decoration: ShapeDecoration(
                color: AppColors.primaryWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30).w,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    child: Image.asset("assets/website/auth_screen/Ellipse 20.png"),
                  ),
                  SizedBox(width: 20.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Congratulations! Your driving license is approved.',
                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,)
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                        style:AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,)
                      ),
                      Text(
                        'Make Payment',
                        style:AppTextStyles.mulishStyle.copyWith( color:AppColors.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,)
                      )

                    ],
                  )


                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,

            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0).w,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 18).w,
            decoration: ShapeDecoration(
              color: AppColors.primaryWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30).w,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.r,
                  child: Image.asset("assets/website/auth_screen/Ellipse 20.png"),
                ),
                SizedBox(width: 20.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sorry! Your driving license is Rejected.',
                      style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,)
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                      style:AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,)
                    ),
                    Text(
                      'Submit Again',
                      style:AppTextStyles.mulishStyle.copyWith( color:AppColors.primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,)
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
