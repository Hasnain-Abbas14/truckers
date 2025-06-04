import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_footer.dart';


class AllBills extends StatefulWidget {
  const AllBills({super.key});

  @override
  State<AllBills> createState() => _AllBillsState();
}

class _AllBillsState extends State<AllBills> {
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

                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Color(0xffE5E1FB),
                  child: Image.asset("assets/website/billing/pdf-svgrepo-com 1.png",height: 80.h,width: 80.w,),
                ),
                SizedBox(width: 15.w,),
                Text(
                  'Receipt Name Wil show here',
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
                Icon(Icons.more_horiz,color: Color(0xff262626),size: 25.r,)
              ],
            ),
          ),
          CustomFooter(),
        ],
      ),
    );
  }
}
