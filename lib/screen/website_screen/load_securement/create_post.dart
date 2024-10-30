import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.97.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: const DecorationImage(
                fit: BoxFit.cover,
                opacity: 1.7,
                image: AssetImage(
                  "assets/website/tbs_tv_screens/Group 31598.png",
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Load Securement\nShare Your Cargo Experience',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bebasStyle.copyWith(
                    color: Colors.white,
                    fontSize: 100.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Share Your Cargo Stories and Keep Fellow Drivers Informed',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Colors.white,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Have you faced a challenging situation with your cargo? Share your experience, photos, or videos to help others learn and stay secure on the road.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text('Create post',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                          "assets/website/tbs_tv_screens/Ellipse 30.png"),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('John William',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w700,
                            )),
                        Container(
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
                              Image(
                                  height: 25.h,
                                  width: 25.w,
                                  image: const AssetImage(
                                    "assets/website/tbs_tv_screens/world-svgrepo-com 1.png",
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Public',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                        )
                      ],
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
                          Text('Material Name',
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Choose material name',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const Spacer(),
                                PopupMenuButton(
                                  color: AppColors.primaryWhite,
                                  splashRadius: 14.r,
                                  onOpened: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14.r)),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {},
                                        child: Text(
                                          '',
                                          style: AppTextStyles.poppinsStyle
                                              .copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  surfaceTintColor: AppColors.primaryWhite,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.text33,
                                  ),
                                ),
                              ],
                            ),
                          )
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
                          Text('Straps',
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Select straps types',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 20.w,
                                ),
                                PopupMenuButton(
                                  color: AppColors.primaryWhite,
                                  splashRadius: 14.r,
                                  onOpened: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14.r)),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {},
                                        child: Text(
                                          '',
                                          style: AppTextStyles.poppinsStyle
                                              .copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  surfaceTintColor: AppColors.primaryWhite,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.text33,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.remove,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: '0',
                                        style:
                                            AppTextStyles.mulishStyle.copyWith(
                                          color: const Color(0xFF262626),
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                        ))),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.add,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                              ],
                            ),
                          )
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
                          Text('Chains',
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Select chains type',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                PopupMenuButton(
                                  color: AppColors.primaryWhite,
                                  splashRadius: 14.r,
                                  onOpened: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14.r)),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {},
                                        child: Text(
                                          '',
                                          style: AppTextStyles.poppinsStyle
                                              .copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  surfaceTintColor: AppColors.primaryWhite,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.text33,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.remove,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: '0',
                                        style:
                                            AppTextStyles.mulishStyle.copyWith(
                                          color: const Color(0xFF262626),
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                        ))),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.add,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                              ],
                            ),
                          )
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
                          Text('Tarps',
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Select tarps type',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 20.w,
                                ),
                                PopupMenuButton(
                                  color: AppColors.primaryWhite,
                                  splashRadius: 14.r,
                                  onOpened: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14.r)),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {},
                                        child: Text(
                                          '',
                                          style: AppTextStyles.poppinsStyle
                                              .copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  surfaceTintColor: AppColors.primaryWhite,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.text33,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.remove,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: '0',
                                        style:
                                            AppTextStyles.mulishStyle.copyWith(
                                          color: const Color(0xFF262626),
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                        ))),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.add,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                              ],
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
                          Text('Corners',
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Enter Corners',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const Spacer(),
                                Icon(
                                  Icons.remove,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: '0',
                                        style:
                                            AppTextStyles.mulishStyle.copyWith(
                                          color: const Color(0xFF262626),
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                        ))),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.add,
                                  color: const Color(0xff262626),
                                  size: 25.r,
                                ),
                              ],
                            ),
                          )
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
                          Text('Length',
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
                                hintText: "Enter Length",
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Enter Weight',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const Spacer(),
                                Text('Kgs',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                PopupMenuButton(
                                  color: AppColors.primaryWhite,
                                  splashRadius: 14.r,
                                  onOpened: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14.r)),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {},
                                        child: Text(
                                          '',
                                          style: AppTextStyles.poppinsStyle
                                              .copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  surfaceTintColor: AppColors.primaryWhite,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.text33,
                                  ),
                                ),
                              ],
                            ),
                          )
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
                          Text('Height',
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
                                hintText: "Enter Height",
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
                          Text('Location',
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
                                hintText: "Choose Location",
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
                          Text('Hashtags',
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
                                hintText: "Enter Hashtags",
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
                    hintText:
                        'Share your securement strategies and learn from the experience of fellow drivers. Post detailed instructions and tips on securing different type of loads, and help enhance safety and efficiency on the road.',
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
                Text('Securement Techniques',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF262626),
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Tools used',
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Select tools',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const Spacer(),
                                PopupMenuButton(
                                  color: AppColors.primaryWhite,
                                  splashRadius: 14.r,
                                  onOpened: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14.r)),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {},
                                        child: Text(
                                          '',
                                          style: AppTextStyles.poppinsStyle
                                              .copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  surfaceTintColor: AppColors.primaryWhite,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.text33,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('Safety Tips',
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
                    hintText: 'Add safety tips related to load securement',
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
                CustomButton(
                  title: "Share Securement Tips",
                  onTap: () {},
                  width: MediaQuery.sizeOf(context).width * 0.28.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
