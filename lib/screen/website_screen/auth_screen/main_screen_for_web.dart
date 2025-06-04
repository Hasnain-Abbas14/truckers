import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:truckerbs_website/app_list/app_list.dart';
import 'package:truckerbs_website/screen/website_screen/about_us/about_us.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/log_in_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/notification_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/payment_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/payment_successful_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/profile_info.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/sign_up_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/thanks_screen.dart';
import 'package:truckerbs_website/screen/website_screen/contact_us/contact_us.dart';
import 'package:truckerbs_website/screen/website_screen/create_bill/all_bills.dart';
import 'package:truckerbs_website/screen/website_screen/create_bill/create_bill.dart';
import 'package:truckerbs_website/screen/website_screen/home_screen/news_screen/new_screen.dart';
import 'package:truckerbs_website/screen/website_screen/load_securement/create_post.dart';
import 'package:truckerbs_website/screen/website_screen/load_securement/load_securement.dart';
import 'package:truckerbs_website/screen/website_screen/loadboards_overview/loadboards_overview.dart';
import 'package:truckerbs_website/screen/website_screen/loadboards_overview/place_bid.dart';
import 'package:truckerbs_website/screen/website_screen/message_tab/message_tab_website.dart';
import 'package:truckerbs_website/screen/website_screen/my_account_screen/my_account_screen.dart';
import 'package:truckerbs_website/screen/website_screen/road_report/road_report.dart';
import 'package:truckerbs_website/screen/website_screen/tasks/tasks.dart';
import 'package:truckerbs_website/screen/website_screen/tbs_tv_screens/tbs_details_screen.dart';
import 'package:truckerbs_website/screen/website_screen/tbs_tv_screens/tbs_tv_screen.dart';
import 'package:truckerbs_website/screen/website_screen/truckers_hub/truckers_hub.dart';
import 'package:truckerbs_website/screen/website_screen/video_screen/story_screen.dart';
import 'package:truckerbs_website/screen/website_screen/video_screen/video_screen.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_footer.dart';

import '../../../themes/app_colors.dart';
import '../home_screen/home_screen.dart';
import '../home_screen/news_screen/new_deatils_screen.dart';
import '../search_for_driver/search_for_driver.dart';

class MainScreenForWeb extends StatefulWidget {
  const MainScreenForWeb({super.key});

  @override
  State<MainScreenForWeb> createState() => _MainScreenForWebState();
}

class _MainScreenForWebState extends State<MainScreenForWeb> {
  int _currentIndex = 0;
  bool _isLoggedIn = false; // Tracks user login status

  // Define the screen map with index keys
  final Map<int, Widget Function()> _routes = {};

  @override
  void initState() {
    super.initState();
    _routes.addAll({
      0: () => HomeScreen(onTapNew: () => _navigateTo(13)),
      1: () => TbsTvScreen(tbsDetails: () => _navigateTo(17)),
      2: () => TruckersHub(onTapJoinNow: () {}),
      3: () => const AboutUs(),
      4: () => LoadboardsOverview(onTapPlaceBid: () => _navigateTo(15)),
      5: () => const ContactUs(),
      6: () => SignUpScreen(onTapSignUp: () => _navigateTo(8)),
      7: () => LogInScreen(
            onTap: () => _navigateTo(6),
            onTapLogIn: () {
              // When login is successful, update login state and navigate to profile
              setState(() {
                _isLoggedIn = true;
                _currentIndex = 12;
              });
            },
          ),
      8: () => ThanksScreen(onTapCompleteProfile: () => _navigateTo(27)),
      9: () => NotificationScreen(onTapPayment: () => _navigateTo(11)),
      10: () => PaymentScreen(onMakePayment: () => _navigateTo(11)),
      11: () => PaymentSuccessfulScreen(onPaymentSuccess: () => _navigateTo(12)),
      12: () => const MyAccountScreen(),
      13: () => NewScreen(onTapDetails: () => _navigateTo(14)),
      14: () => const NewDetailsScreen(),
      15: () => const PlaceBid(),
      16: () => const StoryScreen(),
      17: () => const TbsDetailsScreen(),
      18: () => LoadSecurement(onTapCreatePost: () => _navigateTo(19)),
      19: () => const CreatePost(),
      20: () => const RoadReport(),
      21: () => const SearchForADriver(),
      22: () => CreateBill(onTapSubmitBill: () => _navigateTo(23)),
      23: () => const AllBills(),
      24: () => const Tasks(),
      25: () => ProfileInfo(onTapSave: () => _navigateTo(10)),
      26: () => MessageTabWebsite(),
    });
  }

  void _navigateTo(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Image.asset(
                "assets/image/user/Png red.png",
                height: 113.h,
                width: 222.w,
              ),
              SizedBox(width: 45.w),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  tabData.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Text(
                        tabData[index],
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: _currentIndex == index
                              ? AppColors.primaryColor
                              : AppColors.text33,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              PopupMenuButton(
                color: AppColors.primaryWhite,
                splashRadius: 14.r,
                padding: EdgeInsets.only(right: 10.w),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.r)),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 20;
                        });
                      },
                      child: Text(
                        'Road Report',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 21;
                        });
                      },
                      child: Text(
                        'Search For Driver',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 16;
                        });
                      },
                      child: Text(
                        'Trucker Stories',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 5;
                        });
                      },
                      child: Text(
                        'Contact Us',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 18;
                        });
                      },
                      child: Text(
                        'SecureMyLoad',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 22;
                        });
                      },
                      child: Text(
                        'Create Bill',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 24;
                        });
                      },
                      child: Text(
                        'Tasks',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 13.h,
                      onTap: () {
                        setState(() {
                          _currentIndex = 26;
                        });
                      },
                      child: Text(
                        'Chat',
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ];
                },
                offset: const Offset(0, 30),
                icon: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10).w,
                      child: Text(
                        "More",
                        style: AppTextStyles.poppinsStyle.copyWith(
                          color: AppColors.text33,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.text33,
                      size: 25.r,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 9;
                  });
                },
                child: SvgPicture.asset(
                  "assets/image/tutor/notification.svg",
                  color: AppColors.text33,
                  height: 25.h,
                  width: 25.w,
                ),
              ),
              SizedBox(width: 10.w),
              // Show profile info if logged in, otherwise show Sign up / Login buttons
              _isLoggedIn
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'My Account',
                          style: AppTextStyles.poppinsStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.48,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        CircleAvatar(
                          radius: 20.r,
                          child: Image.asset(
                              "assets/website/auth_screen/Ellipse 11.png"),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 6;
                            });
                          },
                          child: Text.rich(
                            TextSpan(
                              text: 'Sign up',
                              style: AppTextStyles.poppinsStyle.copyWith(
                                color: const Color(0xFF333333),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 7;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: ShapeDecoration(
                              color: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r)),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: AppTextStyles.poppinsStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ]),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 20.h),
                _routes[_currentIndex]?.call() ?? Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
