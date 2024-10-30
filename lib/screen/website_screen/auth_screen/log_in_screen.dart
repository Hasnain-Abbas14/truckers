import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

class LogInScreen extends StatelessWidget {
  final VoidCallback onTap;
  final VoidCallback onTapLogIn;

  const LogInScreen({super.key, required this.onTap, required this.onTapLogIn});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 715.w,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25).w,
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
            Center(
              child: Text('Login',
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: AppColors.primaryBlack,
                    fontSize: 56.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text('Login with your credentials',
                  textAlign: TextAlign.justify,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: const Color(0xFF828282),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text('Email',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: AppColors.text82,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            const ReusableTextForm(
              hintText: 'Enter your email',
              focusBorderColor: AppColors.primaryColor,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text('Password',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: AppColors.text82,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 10.h,
            ),
            const ReusableTextForm(
              hintText: 'Enter your password',
              focusBorderColor: AppColors.primaryColor,
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Color(0xffA2A2A2),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password?',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomButton(
              title: 'Login',
              onTap: onTapLogIn,
              width: double.infinity.w,
            ),
            SizedBox(
              height: 32.h,
            ),
            GestureDetector(
              onTap: onTap,
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Don’t have an account?  ',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFFC4C4C4),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      TextSpan(
                          text: 'Signup',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 62.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                    child: Divider(
                  thickness: 1,
                  height: 1,
                  color: Color(0xffD0D0D0),
                )),
                SizedBox(
                  width: 10.w,
                ),
                Text('OR',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFFC4C4C4),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                const Expanded(
                    child: Divider(
                  thickness: 1,
                  height: 1,
                  color: Color(0xffD0D0D0),
                )),
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              height: 70.h,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ).w,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD2D2D2)),
                  borderRadius: BorderRadius.circular(8).w,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                      height: 25.h,
                      width: 25.w,
                      "assets/website/auth_screen/google-color-svgrepo-com (1) 1.png"),
                  SizedBox(width: 16.w),
                  Text('Continue with Google',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF634747),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 70.h,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ).w,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD2D2D2)),
                  borderRadius: BorderRadius.circular(8).w,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                      height: 25.h,
                      width: 25.w,
                      "assets/website/auth_screen/apple-173-svgrepo-com (3) 1.png"),
                  SizedBox(width: 16.w),
                  Text('Continue with Apple',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF634747),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
