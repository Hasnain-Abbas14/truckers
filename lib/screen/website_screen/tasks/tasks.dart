import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_footer.dart';


class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  bool isCheckedOne=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(right: 30.w),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20).w,
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3FC8C8C8),
                  blurRadius: 20,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child:

            TextFormField(


              decoration: InputDecoration(

                suffixIcon:Padding(
                  padding:  EdgeInsets.all(10.w),
                  child: Image.asset(
                      height: 25.h,
                      width: 25.w,
                      "assets/website/loadboard_overview/filter-list-svgrepo-com (1) 1.png"),
                ),
                prefixIcon: Padding(
                  padding:  EdgeInsets.all(10.w),
                  child: Image.asset(
                      height: 25.h,
                      width: 25.w,
                      "assets/website/auth_screen/Combined-Shape.png"),
                ),
                hintText: "Search receipts",
                enabledBorder:InputBorder.none,
                hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8).w,
                  borderSide: const BorderSide(
                      color: AppColors.redColor
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8).w,
                  borderSide: const BorderSide(
                      color: Colors.transparent
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8).w,
                  borderSide: const BorderSide(
                      color: AppColors.primaryColor
                  ),
                ),

              ),
            ),
          ),
          SizedBox(height: 15.h,),
          Container(
            width: 1620.w,
            height: 114.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x11020129),
                  blurRadius: 44,
                  offset: Offset(1, 17),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [


                Text(
                    'Task Name will show here',
                    style: AppTextStyles.nunito.copyWith(  color: Color(0xFF030229),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,)
                ),
                Spacer(),
                Text(
                    '12-10-2024',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.nunito.copyWith( color: Color(0xFF5B92FF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,)
                ),
                SizedBox(width: 10.w,),
                Checkbox(
                  value: isCheckedOne,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedOne = value ?? false;
                    });
                  },
                  activeColor: Color(0xff03D40B), // Set active color to red
                ),
              ],
            ),
          ),
          CustomFooter(),
        ],
      ),
    );
  }
}
