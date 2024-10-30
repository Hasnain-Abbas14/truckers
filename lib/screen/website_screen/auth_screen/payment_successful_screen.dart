import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_colors.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  final VoidCallback onPaymentSuccess;
  const PaymentSuccessfulScreen({super.key, required this.onPaymentSuccess});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 715.w,
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50).w,
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
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/website/auth_screen/smile-square-svgrepo-com 1.png",height: 100.h,width: 100.w,),
            SizedBox(height: 15.h,),
            Text(
              'Payment Successful',
              textAlign: TextAlign.center,
              style:AppTextStyles.mulishStyle.copyWith(color: AppColors.primaryBlack,
                fontSize: 56.sp,
                fontWeight: FontWeight.w600,),
            ),
            SizedBox(height: 6.h,),
            Text(
                'Congratulations! You have got a verified badge on your profile.\nThis badge is public and ensure trust to companies to working\nwith you.',
                textAlign: TextAlign.center,
                style: AppTextStyles.mulishStyle.copyWith( color: Color(0xFF828282),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,)
            ),
            SizedBox(height: 60.h,),
            CustomButton(title: "Visit Profile", onTap:onPaymentSuccess,height: 70.h,)





          ],
        ),
      ),
    );
  }
}