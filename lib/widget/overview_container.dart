import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class OverviewContainer extends StatelessWidget {
  final String mainTitle;
  final Widget requiredWidgets;
  final bool isImage;
  final Widget? isImagesRequired;

  const OverviewContainer(
      {super.key,
      required this.mainTitle,
      required this.requiredWidgets,
      this.isImagesRequired,
      this.isImage = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      margin: EdgeInsets.only(bottom: 10.h),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(mainTitle,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF262626),
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 8.h,
                  ),
                  requiredWidgets
                ],
              ),
            ),
          ),
          isImage ? isImagesRequired ?? const SizedBox() : const SizedBox()
        ],
      ),
    );
  }
}
