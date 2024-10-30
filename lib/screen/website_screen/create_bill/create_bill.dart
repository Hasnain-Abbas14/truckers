import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_colors.dart';

class CreateBill extends StatefulWidget {
  final VoidCallback onTapSubmitBill;
  const CreateBill({super.key, required this.onTapSubmitBill});

  @override
  State<CreateBill> createState() => _CreateBillState();
}

class _CreateBillState extends State<CreateBill> {
  bool isChecked = false;
  bool isCheckedOne = false;
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 1720.w,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F989898),
                  blurRadius: 15,
                  offset: Offset(0, 4),
                  spreadRadius: 4,
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Shipper',
                          style: AppTextStyles.bebasStyle.copyWith(
                            color: Color(0xFF333333),
                            fontSize: 96.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.58,
                          )),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text('Name',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: AppColors.redColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text('Address',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Address",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: AppColors.redColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text('Phone Number',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Phone Number",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: AppColors.redColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Consignee',
                          style: AppTextStyles.bebasStyle.copyWith(
                            color: Color(0xFF333333),
                            fontSize: 96.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.58,
                          )),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text('Name',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: AppColors.redColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text('Address',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Address",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: AppColors.redColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text('Phone Number',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Phone Number",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: AppColors.redColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 1720.w,
            padding: EdgeInsets.all(15.w),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F989898),
                  blurRadius: 15,
                  offset: Offset(0, 4),
                  spreadRadius: 4,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text('Create Bill',
                          style: AppTextStyles.bebasStyle.copyWith(
                            color: const Color(0xFF333333),
                            fontSize: 76.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.58,
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Video / Photo File',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 460.w,
                          height: 80.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: const Color(0x19FF0000),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.r)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.attach_file_outlined,
                                color: const Color(0xFF262626),
                                size: 25.r,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Upload File',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.32,
                                  ))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25.h,
                          ),
                          Text('Loading Number',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Loading Number",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text('Load ID',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Load ID",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text('Pickup Location',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Choose Pickup Location",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text('Pickup Date',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Choose Pickup Date",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25.h,
                          ),
                          Text('Carrier Name',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Carrier Name",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text('Phone Number',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Phone Number",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text('Drop-off Location',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Drop-off Location",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text('Drop-off Date',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Drop-off Date",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('Description',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: 'Brief summary of what was transported',
                    enabledBorder: InputBorder.none,
                    hintStyle: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF262626),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(color: AppColors.redColor),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide:
                          const BorderSide(color: AppColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Number of packages',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Number of packages",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Weight',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Weight",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Dimensions',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Dimensions",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Distance Travelled',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Distance Travelled",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Rate per mile',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Rate per mile",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Freight Class',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Freight Class",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                                activeColor: AppColors
                                    .primaryBlack, // Set active color to red
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Hazardous Materials',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF828282),
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter UN Number",
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Payment Method',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: Color(0xFF828282),
                                fontSize: 36.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(
                                value: 1,
                                groupValue: _selectedValue,
                                activeColor: AppColors.primaryColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedValue = value!;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Prepaid',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Spacer(),
                              Radio(
                                value: 2,
                                groupValue: _selectedValue,
                                activeColor: AppColors.primaryColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedValue = value!;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Collect',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Spacer(),
                              Radio(
                                value: 3,
                                groupValue: _selectedValue,
                                activeColor: AppColors.primaryColor,
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedValue = value!;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Third Party',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Container(
                        width: 791.w,
                        height: 206.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/website/billing/UPI_logo_PNG_lyp5s5 1.png",
                              height: 36.h,
                              width: 133.w,
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/website/billing/Google_Pay_Button_PNG_Image_Free_Download_searchpng_com-removebg-preview 1.png",
                              height: 163.h,
                              width: 163.w,
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/website/billing/PhonePe_Logo_PNG_Image_Free_Download_Searchpng_com-removebg-preview 1.png",
                              height: 109.h,
                              width: 109.w,
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/website/billing/Paytm_Circle_Logo_PNG_Image_Free_Download_searchpng_com-removebg-preview 1 (1).png",
                              height: 105.h,
                              width: 105.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.h,
                ),
                Text('Signatures:',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Color(0xFF828282),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Shipper',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: const Divider(
                      thickness: 1,
                      height: 1,
                      color: Color(0xff000000),
                    )),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text('Carrier',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: const Divider(
                      thickness: 1,
                      height: 1,
                      color: Color(0xff000000),
                    )),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text('Consignee',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: const Divider(
                      thickness: 1,
                      height: 1,
                      color: Color(0xff000000),
                    )),
                    SizedBox(
                      width: 30.w,
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isCheckedOne,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedOne = value ?? false;
                        });
                      },
                      activeColor: AppColors
                          .primaryBlack, // Set active color to red
                    ),
                    SizedBox(width: 15.w,),
                    Expanded(

                      child: Text(
                        'By submitting this document, you agree to the terms and conditions of carriage, including but not limited to the responsibility for the safe transport of goods, liability limitations, and compliance with all applicable laws and regulations.',
                        style: AppTextStyles.mulishStyle.copyWith(color: Color(0xFF828282),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,)
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(title: "Submit Bill", onTap: widget.onTapSubmitBill,width: 396.w,  height: 80.h,),
                    SizedBox(width: 15.w,),
                    Container(
                      width: 396.05.w,
                      height: 80.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFFF0000)),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                            'Save as draft',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(color: Color(0xFFFF0000),
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.32,)
                        ),
                      ),

                    )
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
