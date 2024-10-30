import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_text_styles.dart';


class CustomRichText extends StatelessWidget {

  final String title;
  final String subTitle;
  final Widget? requiredIcon;
  final bool isRequiredIcon;
  const CustomRichText({super.key, required this.title, required this.subTitle, this.requiredIcon, this.isRequiredIcon=false});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        isRequiredIcon? requiredIcon??const SizedBox():const SizedBox(),
        SizedBox(width: 10.w,),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '$title  ',
                  style:AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,)
              ),
              TextSpan(
                  text: subTitle,
                  style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,)
              ),
            ],
          ),
        ),
      ],
    );
  }
}
