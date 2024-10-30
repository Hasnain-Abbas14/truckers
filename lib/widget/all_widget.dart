import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/app_list/app_list.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import 'custom_button.dart';

class PicToTheLeftSide extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String description;
  final String buttonText;
  final String buttonTextTwo;
  final Widget iconRequired;
  final VoidCallback onTapButton;

  const PicToTheLeftSide(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.buttonText,
      required this.buttonTextTwo,
      required this.iconRequired,
      required this.onTapButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
            width: MediaQuery.sizeOf(context).width * 0.35.w, imagePath),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                      style: AppTextStyles.dmSans.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.72,
                      )),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryColor,
                    size: 16,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 15,
                    child: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 16),
                  )
                ],
              ),
              Text(
                subtitle,
                style: AppTextStyles.mulishStyle.copyWith(
                  color: const Color(0xFF333333),
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(description,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: const Color(0xFF8E8E93),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.63,
                  )),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    title: buttonText,
                    onTap: onTapButton,
                    width: MediaQuery.sizeOf(context).width * 0.25.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8).w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Color(0xffF2C94C),
                          Color(0xffFF0000),
                        ])),
                    child: iconRequired,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(buttonTextTwo,
                      style: AppTextStyles.poppinsStyle.copyWith(
                        color: const Color(0xFF4E4E4E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class PicToTheRightSide extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String description;
  final String buttonText;
  final String buttonTextTwo;
  final Widget iconRequired;

  const PicToTheRightSide(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.buttonText,
      required this.buttonTextTwo,
      required this.iconRequired});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                      style: AppTextStyles.dmSans.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.72,
                      )),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryColor,
                    size: 16,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 15,
                    child: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 16),
                  )
                ],
              ),
              Text(
                subtitle,
                style: AppTextStyles.mulishStyle.copyWith(
                  color: const Color(0xFF333333),
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(description,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: const Color(0xFF8E8E93),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.63,
                  )),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    title: buttonText,
                    onTap: () {},
                    width: MediaQuery.sizeOf(context).width * 0.30.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8).w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Color(0xffF2C94C),
                          Color(0xffFF0000),
                        ])),
                    child: iconRequired,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(buttonTextTwo,
                      style: AppTextStyles.poppinsStyle.copyWith(
                        color: const Color(0xFF4E4E4E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Image.asset(
            width: MediaQuery.sizeOf(context).width * 0.35.w, imagePath),
      ],
    );
  }
}

class CommunityStoriesWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String driverType;
  final String timePeriod;
  final String description;

  const CommunityStoriesWidget(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.driverType,
      required this.timePeriod,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.25.w,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.58).r,
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3FCCCCCC),
              blurRadius: 19.59,
              offset: Offset(0, 5.22),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
                width: MediaQuery.sizeOf(context).width * 0.25.w, imagePath),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name,
                      style: AppTextStyles.poppinsStyle.copyWith(
                        color: Color(0xFF333333),
                        fontSize: 30.22.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(driverType,
                          style: AppTextStyles.poppinsStyle.copyWith(
                            color: Color(0xFFFF0000),
                            fontSize: 19.43.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      Spacer(),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Color(0xff828282),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(timePeriod,
                          style: AppTextStyles.poppinsStyle.copyWith(
                            color: Color(0xFF828282),
                            fontSize: 16.89.sp,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(description,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF828282),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.63,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image/home/like-svgrepo-com (3) 5.png",
                        height: 25.h,
                        width: 25.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Image.asset(
                        "assets/image/home/comment-lines-2-svgrepo-com (1) 5.png",
                        height: 25.h,
                        width: 25.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Image.asset(
                        "assets/image/home/share-svgrepo-com (4) 5.png",
                        height: 25.h,
                        width: 25.w,
                      ),
                      Spacer(),
                      Text('Read more',
                          style: AppTextStyles.poppinsStyle.copyWith(
                            color: Color(0xFFFF0000),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class VideoWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String newsType;
  final String timePeriod;
  final String description;

  const VideoWidget(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.newsType,
      required this.timePeriod,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.25.w,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.58).r,
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3FCCCCCC),
              blurRadius: 19.59,
              offset: Offset(0, 5.22),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
                width: MediaQuery.sizeOf(context).width * 0.25.w, imagePath),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF262626),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(description,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF8E8E93),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(newsType,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Color(0xFF262626),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          )),
                      Spacer(),
                      Text(timePeriod,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Color(0xFF262626),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class VideoWidgetTruckerHub extends StatelessWidget {
  final String imagePath;
  final String name;
  final String noOfMember;
  final String description;
  final VoidCallback? onTapJoinNow;

  const VideoWidgetTruckerHub(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.noOfMember,
      required this.description,
      this.onTapJoinNow});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.25.w,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.58).r,
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3FCCCCCC),
              blurRadius: 19.59,
              offset: Offset(0, 5.22),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
                width: MediaQuery.sizeOf(context).width * 0.25.w, imagePath),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF262626),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(description,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF8E8E93),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.groups_outlined,
                        color: AppColors.primaryColor,
                        size: 25.r,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(noOfMember,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Color(0xFF262626),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          )),
                      Spacer(),
                      GestureDetector(
                        onTap: onTapJoinNow,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.transparent,
                              border:
                                  Border.all(color: AppColors.primaryColor)),
                          child: Center(
                            child: Text('Join Group',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: Color(0xFFFF0000),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.13,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class VideoWidgetTruckerHubWithLocation extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final String date;
  final String location;

  const VideoWidgetTruckerHubWithLocation(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.date,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.25.w,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.58).r,
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3FCCCCCC),
              blurRadius: 19.59,
              offset: Offset(0, 5.22),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
                width: MediaQuery.sizeOf(context).width * 0.25.w, imagePath),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF262626),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(description,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF8E8E93),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.calendar_month_rounded,
                        color: AppColors.primaryColor,
                        size: 24.r,
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Text(date,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: Color(0xFF262626),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.primaryColor,
                        size: 24.r,
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Text(location,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: Color(0xFF262626),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.transparent,
                        border: Border.all(color: AppColors.primaryColor)),
                    child: Center(
                      child: Text('Register Now',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Color(0xFFFF0000),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.13,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class LoadBoardContainer extends StatelessWidget {
  final VoidCallback onTapPlaceBid;
  final bool? isFeatured;

  const LoadBoardContainer(
      {super.key, required this.onTapPlaceBid, this.isFeatured});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Flatbed Load - 20 Tons',
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Color(0xFF262626),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  )),
              Spacer(),
              isFeatured == true
                  ? Image.asset(
                      height: 25.h,
                      width: 25.w,
                      "assets/website/loadboard_overview/verify.png")
                  : SizedBox()
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry...',
              style: AppTextStyles.mulishStyle.copyWith(
                color: Color(0xFF8E8E93),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(
            height: 15.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/website/loadboard_overview/calendar-svgrepo-com (2) 2 (1).png",
                height: 25.h,
                width: 25.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text('September 12, 2024 | 10:00 AM - 4:00 PM',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Color(0xFF262626),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/website/loadboard_overview/pickup-svgrepo-com 1.png",
                height: 25.h,
                width: 25.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text('Dallas Convention Center, Dallas, TX',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Color(0xFF262626),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/website/loadboard_overview/pickup-svgrepo-com 2.png",
                height: 25.h,
                width: 25.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text('Chicago O\'Hare Convention Center, Chicago, IL',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Color(0xFF262626),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            thickness: 1,
            height: 1,
            color: Color(0xFFE1E1E1),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('Pickup',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Color(0xFF8E8E93),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: Color(0x19FF0000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Center(
                        child: Text('25-11-2024',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: Color(0xFF262626),
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w400,
                            )),
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
                  children: [
                    Text('Delivery',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Color(0xFF8E8E93),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: Color(0x19FF0000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Center(
                        child: Text('25-11-2024',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: Color(0xFF262626),
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w400,
                            )),
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
                  children: [
                    Text('Weight',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Color(0xFF8E8E93),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: Color(0x19FF0000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Center(
                        child: Text('20 Tons',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: Color(0xFF262626),
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w400,
                            )),
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
                  children: [
                    Text('Load Type',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Color(0xFF8E8E93),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: Color(0x19FF0000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Center(
                        child: Text('Reefer',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: Color(0xFF262626),
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w400,
                            )),
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
                  children: [
                    Text('Price',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Color(0xFF8E8E93),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: Color(0x19FF0000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Center(
                        child: Text('\$200',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: Color(0xFF262626),
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7.h),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFF0000)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Center(
                    child: Text('View Details',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.13,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: onTapPlaceBid,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 7.h),
                      decoration: ShapeDecoration(
                        color: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8).w),
                      ),
                      child: Center(
                        child: Text("Place Bid",
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: AppColors.primaryWhite,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                            )),
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ReportIssueContainer extends StatelessWidget {
  final String title;
  final String status;
  final String deliverDate;
  final String link;

  const ReportIssueContainer(
      {super.key,
      required this.title,
      required this.status,
      required this.deliverDate,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      margin: EdgeInsets.only(right: 10.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title,
              style: AppTextStyles.mulishStyle.copyWith(
                color: Color(0xFF262626),
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              )),
          SizedBox(
            height: 15.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Status',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Color(0xFF8E8E93),
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                width: 8.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: ShapeDecoration(
                  color: Color(0x19FF0000),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                ),
                child: Center(
                  child: Text(status,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF262626),
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Spacer(),
              Text('Delivery',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Color(0xFF8E8E93),
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                width: 8.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: ShapeDecoration(
                  color: Color(0x19FF0000),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                ),
                child: Center(
                  child: Text(deliverDate,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF262626),
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Spacer(),
              Text('Tracking Link',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Color(0xFF8E8E93),
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                width: 8.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: ShapeDecoration(
                  color: Color(0x19FF0000),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                ),
                child: Center(
                  child: Text(link,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: Color(0xFF262626),
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFFF0000)),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info_outline,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text('Report an Issue',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.13,
                      )),
                ],
              ))
        ],
      ),
    );
  }
}

class StoryContainer extends StatelessWidget {
  final bool? isTop;
  final bool? isMostRead;

  const StoryContainer(
      {super.key, this.isTop, this.isMostRead});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
          storiesData.length,
          (index) => Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21.58.r),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FCCCCCC),
                        blurRadius: 19.59,
                        offset: Offset(0, 5.22),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.55.h,
                        width: double.infinity.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21.58.r),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            storiesData[index].imgPath,
                          )
                        )
                      ),
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              isTop==true?
                              CircleAvatar(
                                backgroundColor: AppColors.primaryWhite,
                                radius: 25.r,
                                child: Image.asset(
                                  "assets/website/loadboard_overview/badge-svgrepo-com 2.png",
                                  height: 23.h,
                                  width: 23.w,
                                ),
                              ):
                              isMostRead==true?
                              CircleAvatar(
                                backgroundColor: AppColors.primaryWhite,
                                radius: 25.r,
                                child: Image.asset(
                                  "assets/website/loadboard_overview/read-svgrepo-com 1.png",
                                  height: 23.h,
                                  width: 23.w,
                                ),
                              ):SizedBox()

                            ],
                          ),
                        ),
                      ),


                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                'Miles of Memories: A Journey Through Snow and Sun',
                                style: AppTextStyles.poppinsStyle.copyWith(
                                  color: Color(0xFF333333),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: Color(0xFF828282),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.63,
                                )),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/website/new/like-right-svgrepo-com 1.png",
                                  height: 25.h,
                                  width: 25.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(
                                  "assets/website/new/comment-lines-2-svgrepo-com (2) 1.png",
                                  height: 25.h,
                                  width: 25.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(
                                  "assets/website/new/share-svgrepo-com (5) 1.png",
                                  height: 25.h,
                                  width: 25.w,
                                ),
                                Spacer(),
                                Text('Read more',
                                    style: AppTextStyles.poppinsStyle.copyWith(
                                      color: AppColors.primaryColor,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class StoryModel {
  final String imgPath;
  final String title;
  final String description;

  StoryModel(
      {required this.imgPath, required this.title, required this.description});
}

class TableDataModel {
  final String load;
  final String bidAmount;
  final String status;
  final String date;
  final String cancelBid;
  final String viewBid;

  TableDataModel(
      {required this.load,
      required this.bidAmount,
      required this.status,
      required this.date,
      required this.cancelBid,
      required this.viewBid});
}
