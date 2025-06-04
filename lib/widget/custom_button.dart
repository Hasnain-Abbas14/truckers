import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.title,
    this.height,
    required this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width ?? 583.w,
          height: height ?? 70.h,
          padding: const EdgeInsets.symmetric(horizontal: 40).w,
          decoration: ShapeDecoration(
            color: onTap == null ? AppColors.primaryColor.withOpacity(0.5) : AppColors.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).w),
          ),
          child: Center(
            child: Text(title,
                style: AppTextStyles.mulishStyle.copyWith(
                  color: AppColors.primaryWhite,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                )),
          )),
    );
  }
}
