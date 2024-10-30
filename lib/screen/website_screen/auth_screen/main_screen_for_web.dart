import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/app_list/app_list.dart';
import 'package:truckerbs_website/screen/dashboard_screens/home_screen.dart';
import 'package:truckerbs_website/screen/website_screen/about_us/about_us.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/log_in_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/notification_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/payment_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/payment_successful_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/thanks_screen.dart';
import 'package:truckerbs_website/screen/website_screen/contact_us/contact_us.dart';
import 'package:truckerbs_website/screen/website_screen/create_bill/all_bills.dart';
import 'package:truckerbs_website/screen/website_screen/create_bill/create_bill.dart';
import 'package:truckerbs_website/screen/website_screen/donate_us/donate_us.dart';
import 'package:truckerbs_website/screen/website_screen/driver_report_and_stories/driver_report_and_stories.dart';
import 'package:truckerbs_website/screen/website_screen/home_screen/news_screen/new_screen.dart';
import 'package:truckerbs_website/screen/website_screen/load_securement/create_post.dart';
import 'package:truckerbs_website/screen/website_screen/load_securement/load_securement.dart';
import 'package:truckerbs_website/screen/website_screen/loadboards_overview/loadboards_overview.dart';
import 'package:truckerbs_website/screen/website_screen/loadboards_overview/place_bid.dart';
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

class MainScreenForWeb extends StatefulWidget {
  const MainScreenForWeb({super.key});

  @override
  State<MainScreenForWeb> createState() => _MainScreenForWebState();
}

class _MainScreenForWebState extends State<MainScreenForWeb> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                      height: 113.h, width: 222.w, "assets/image/home/3 3.png"),
                  SizedBox(
                    width: 55.w,
                  ),
                  Row(
                    children: List.generate(
                      tabData.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10).w,
                          child: Text(
                            tabData[index].toString(),
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
                    onOpened: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r)),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          height: 13.h,
                          onTap: () {
                            setState(() {
                              _currentIndex=22;
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
                              _currentIndex=23;
                            });
                          },
                          child: Text(
                            'Driver Report and Stories',
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
                              _currentIndex=17;
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
                              _currentIndex = 19;
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
                            _currentIndex = 21;
                            });
                          },
                          child: Text(
                            'Donate Us',
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
                              _currentIndex = 26;
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
                      ];
                    },
                    offset: const Offset(0, 30),
                    surfaceTintColor: AppColors.primaryWhite,
                    icon: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10).w,
                          child: Text(
                            "More",
                            style: AppTextStyles.poppinsStyle.copyWith(
                              color: AppColors.text33,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.text33,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                      height: 25.h,
                      width: 25.w,
                      "assets/website/auth_screen/Combined-Shape.png"),
                  SizedBox(
                    width: 30.w,
                  ),
                  _currentIndex != 12
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            SizedBox(
                              width: 30.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 7;
                                });
                              },
                              child: Container(
                                width:
                                    MediaQuery.sizeOf(context).width * 0.15.w,
                                height: 50.h,
                                decoration: ShapeDecoration(
                                  color: AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5).w),
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
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('My Account',
                                textAlign: TextAlign.right,
                                style: AppTextStyles.poppinsStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.48,
                                )),
                            SizedBox(
                              width: 15.w,
                            ),
                            CircleAvatar(
                              radius: 20.r,
                              child: Image.asset(
                                  "assets/website/auth_screen/Ellipse 11.png"),
                            )
                          ],
                        ),
                ]),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                _currentIndex == 0
                    ? HomeScreen(
                        onTapNew: () {
                          setState(() {
                            _currentIndex = 13;
                          });
                        },
                      )
                    : _currentIndex == 1
                        ? TbsTvScreen(
                            tbsDetails: () {
                              setState(() {
                                _currentIndex = 18;
                              });
                            },
                          )
                        : _currentIndex == 2
                            ? TruckersHub(
                                onTapJoinNow: () {
                                  setState(() {
                                    _currentIndex = 15;
                                  });
                                },
                              )
                            : _currentIndex == 3
                                ? VideoScreen(
                                    onTapSubmit: () {
                                      setState(() {

                                      });
                                    },
                                  )
                                : _currentIndex == 4
                                    ? const AboutUs()
                                    : _currentIndex == 5
                                        ? const ContactUs()
                                        : _currentIndex == 6
                                            ? SignUpScreen(
                                                onTapSignUp: () {
                                                  setState(() {
                                                    _currentIndex = 8;
                                                  });
                                                },
                                                onTap: () {
                                                  setState(() {
                                                    _currentIndex = 7;
                                                  });
                                                },
                                              )
                                            : _currentIndex == 7
                                                ? LogInScreen(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex = 6;
                                                      });
                                                    },
                                                    onTapLogIn: () {
                                                      setState(() {
                                                        _currentIndex = 0;
                                                      });
                                                    },
                                                  )
                                                : _currentIndex == 8
                                                    ? ThanksScreen(
                                                        onTapHomePageButton:
                                                            () {
                                                          setState(() {
                                                            _currentIndex = 9;
                                                          });
                                                        },
                                                      )
                                                    : _currentIndex == 9
                                                        ? NotificationScreen(
                                                            onTapPayment: () {
                                                              setState(() {
                                                                _currentIndex =
                                                                    10;
                                                              });
                                                            },
                                                          )
                                                        : _currentIndex == 10
                                                            ? PaymentScreen(
                                                                onMakePayment:
                                                                    () {
                                                                setState(() {
                                                                  _currentIndex =
                                                                      11;
                                                                });
                                                              })
                                                            : _currentIndex == 11
                                                                ? PaymentSuccessfulScreen(
                                                                    onPaymentSuccess:
                                                                        () {
                                                                    setState(
                                                                        () {
                                                                      _currentIndex =
                                                                          12;
                                                                    });
                                                                  })
                                                                : _currentIndex == 12
                                                                    ? const MyAccountScreen()
                                                                    : _currentIndex == 13
                                                                        ? NewScreen(
                                                                            onTapDetails:
                                                                                () {
                                                                              setState(() {
                                                                                _currentIndex = 14;
                                                                              });
                                                                            },
                                                                          )
                                                                        : _currentIndex == 14
                                                                            ? const NewDetailsScreen()
                                                                            : _currentIndex == 15
                                                                                ? LoadboardsOverview(
                                                                                    onTapPlaceBid: () {
                                                                                      setState(() {
                                                                                        _currentIndex = 16;
                                                                                      });
                                                                                    },
                                                                                  )
                                                                                : _currentIndex == 16
                                                                                    ? const PlaceBid()
                                                                                    : _currentIndex == 17
                                                                                        ? const StoryScreen()
                                                                                        : _currentIndex == 18
                                                                                            ? const TbsDetailsScreen()
                                                                                            : _currentIndex == 19
                                                                                                ? LoadSecurement(
                                                                                                    onTapCreatePost: () {
                                                                                                      setState(() {
                                                                                                        _currentIndex = 20;
                                                                                                      });
                                                                                                    },
                                                                                                  )
                                                                                                : _currentIndex == 20
                                                                                                    ? const CreatePost():
                                                                                                       _currentIndex==21?
                                                                                                       const DonateUs():
                                                                                                           _currentIndex==22
                                                                                                               ?const RoadReport():
                                                                                                               _currentIndex==23?
                                                                                                               const DriverReportAndStories():
                                                                                                               _currentIndex==24?
                                                                                                              CreateBill(onTapSubmitBill: () {
                                                                                                                setState(() {
                                                                                                                  _currentIndex=25;
                                                                                                                });
                                                                                                              },):
                                                                                                                   _currentIndex==25?const AllBills():
                                                                                                                       _currentIndex==26?const Tasks()
                                                                                                    : Container(),
                SizedBox(
                  height: 100.h,
                ),
                const CustomFooter()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
