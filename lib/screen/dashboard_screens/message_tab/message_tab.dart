import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:truckerbs_website/screen/dashboard_screens/message_tab/tabs/persnoal_tab.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({super.key});

  @override
  State<MessageTab> createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  final List<String> tabText = [
    'All',
    'Personal',
    'Group',
  ];
  final List pages = [
    const SizedBox(),
    const PersonalTab(),
    const SizedBox(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width:368.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Message',
                          style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor, fontSize: 16.sp),
                        ),
                        const Spacer(),
                     CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 15.r,
                          child: const Icon(
                            Icons.add,
                            color: AppColors.primaryWhite,
                          ),
                        )
                      ],
                    ),
                  SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.primaryWhite,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColors.hintColor,
                        ),
                        hintText: 'Search',
                        hintStyle: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 10.sp),
                        contentPadding: const EdgeInsets.all(10).w,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8).w,
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8).w,
                          borderSide: BorderSide.none,
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8).w,
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8).w,
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8).w,
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                 SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            tabText.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              child: SizedBox(
                                width: 118.w,
                                child: Center(
                                  child: Text(
                                    tabText[index].toString(),
                                    style: AppTextStyles.mediumStyle.copyWith(
                                      color: _currentIndex == index
                                          ? AppColors.primaryColor
                                          : AppColors.hintColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                     SizedBox(height: 10.h),
                        SizedBox(
                          height: 2.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(
                                tabText.length,
                                (index) => Container(
                                      width: 118.w,
                                      color: _currentIndex == index
                                          ? AppColors.primaryColor
                                          : Colors.transparent,
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                SizedBox(
                      height: 20.h,
                    ),
                    pages[_currentIndex]
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                  width: 764.w,
                  height: 839.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                     CircleAvatar(
                            radius: 25.r,
                            backgroundImage:
                                const AssetImage("assets/image/user/image.png"),
                          ),
                        SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Carlio',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.primaryBlack,
                                    fontSize: 16.sp),
                              ),
                              Text(
                                'Online',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.hintColor, fontSize: 12.sp),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.call,
                            color: AppColors.hintColor,
                          ),
                         SizedBox(
                            width: 15.w,
                          ),
                          const Icon(
                            Icons.videocam_rounded,
                            color: AppColors.hintColor,
                          ),
                         SizedBox(
                            width: 15.w,
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: AppColors.hintColor,
                          ),
                      SizedBox(
                            width: 15.w,
                          ),
                        ],
                      ),
                  SizedBox(height: 20.h),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.15,
                        padding: const EdgeInsets.all(10).w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(16).w,
                              topRight: const Radius.circular(16).w,
                              bottomRight: const Radius.circular(16).w,
                            ),
                            color: AppColors.primaryColor),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Lorem Ipsum is simply ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.primaryWhite),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            color: AppColors.primaryColor),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.primaryWhite),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                  CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            const AssetImage("assets/image/user/image.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 140.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15).w,
                                color: AppColors.hintColor),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 140.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15).w,
                                color: AppColors.hintColor),
                          ),
                        ],
                      ),
                    SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        padding: const EdgeInsets.all(10).w,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(16).w,
                              topRight: const Radius.circular(16).w
                              ,
                              bottomRight: const Radius.circular(16).w,
                            ),
                            color: AppColors.primaryColor),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.primaryWhite),
                              ),
                            ),
                          ],
                        ),
                      ),
                 SizedBox(height: 20.h),
                      CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            const AssetImage("assets/image/user/image.png"),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                  height: 48.h,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16).w
                                      ,
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                            left: 10, top: 10),
                                        hintText: 'Say Something....',
                                        hintStyle: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey),
                                        prefixIcon: GestureDetector(
                                            child: const Icon(
                                                Icons.attach_file_outlined,
                                                color: Colors.grey)),
                                        suffixIcon: GestureDetector(
                                            child: const Icon(
                                                Icons.emoji_emotions_outlined,
                                                color: Colors.grey)),
                                        border: InputBorder.none),
                                  )),
                            ),
                        SizedBox(width: 10.w),
                            GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  'assets/image/tutor/send.svg',
                                  color: AppColors.primaryColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
