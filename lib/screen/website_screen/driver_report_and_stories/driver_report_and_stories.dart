import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';

import '../../../themes/app_colors.dart';

class DriverReportAndStories extends StatefulWidget {
  const DriverReportAndStories({super.key});

  @override
  State<DriverReportAndStories> createState() => _DriverReportAndStoriesState();
}

class _DriverReportAndStoriesState extends State<DriverReportAndStories> {
  bool isCheckedThree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Driver’s',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bebasStyle.copyWith(
                        color: const Color(0xFF262626),
                        fontSize: 200.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                        'Contact with truck driver’s and get your work done by hiring them :)',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF262626),
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Image.asset(
                "assets/website/new/pngtree-a-cartoon-drawing-of-trucker-driver-semi-truck-vector-png-image_12309176 1.png",
                height: 470.h,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            width: 1720.w,
            height: 2350.h,
            padding: EdgeInsets.all(15.w),
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
                      child: Container(
                        padding: EdgeInsets.only(right: 30.w),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 20.h,
                                  width: 20.w,
                                  "assets/website/auth_screen/Combined-Shape.png"),
                            ),
                            hintText: "Search for drivers",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.24,
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
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 30.w),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 20.h,
                                  width: 20.w,
                                  "assets/website/auth_screen/Combined-Shape.png"),
                            ),
                            hintText: "Keywords",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.24,
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
                    ),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.only(right: 30.w),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: isCheckedThree,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedThree = value ?? false;
                                  });
                                },
                                activeColor: AppColors
                                    .primaryBlack, // Set active color to red
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Verified Drivers',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.24,
                                  )),
                            ],
                          )),
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
                      child: Container(
                        padding: EdgeInsets.only(right: 30.w),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 20.h,
                                  width: 20.w,
                                  "assets/website/new/flag-gb-svgrepo-com 1.png"),
                            ),
                            hintText: "Country",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.24,
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
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 30.w),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 20.h,
                                  width: 20.w,
                                  "assets/website/new/state-or-country-administration-building-svgrepo-com 1.png"),
                            ),
                            hintText: "State",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.24,
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
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 30.w),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 20.h,
                                  width: 20.w,
                                  "assets/website/new/city-svgrepo-com 1.png"),
                            ),
                            hintText: "City",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.24,
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Divider(
                  thickness: 1,
                  height: 1,
                  color: Color(0xffC6C6C6),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 1620.w,
                  height: 114.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x11020129),
                        blurRadius: 44,
                        offset: Offset(1, 17),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        child: Image.asset(
                            "assets/website/tbs_tv_screens/Ellipse 30.png"),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('John Deo',
                          style: AppTextStyles.nunito.copyWith(
                            color: const Color(0xFF030229),
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w600,
                          )),
                      const Spacer(),
                      Text('johndoe2211@gmail.com',
                          style: AppTextStyles.nunito.copyWith(
                            color: const Color(0xFF030229),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      const Spacer(),
                      Text('America',
                          style: AppTextStyles.nunito.copyWith(
                            color: const Color(0xFF030229),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      const Spacer(),
                      ...List.generate(
                        4,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: const Icon(
                            Icons.star,
                            color: Color(0xffFFB903),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Opacity(
                        opacity: 0.10,
                        child: Container(
                          width: 112.w,
                          height: 33.h,
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF5B92FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33.r),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.verified,
                                color: const Color(0xff5B93FF),
                                size: 24.r,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text('Verified',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.nunito.copyWith(
                                    color: const Color(0xFF5B92FF),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/website/tbs_tv_screens/chat-round-dots-svgrepo-com (1) 1.png",
                        height: 60.h,
                        width: 60.w,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
