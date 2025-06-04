import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../widget/all_widget.dart';
import '../../../widget/custom_footer.dart';

class TbsTvScreen extends StatelessWidget {
  final VoidCallback tbsDetails;
  const TbsTvScreen({super.key, required this.tbsDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:
        [
          SizedBox(
            height: 40.h,
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
                    Text('RB Studio: Safety Talks, Business News, and Logistics Insights.',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Color(0xFF101130),
                          fontSize: 76.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.96,
                        )),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry  printing and typesetting industry ',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Color(0xFF8E8E93),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                      title: "Get Started",
                      onTap: () {},
                      width: MediaQuery.sizeOf(context).width * 0.25.w,
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
                    Image.asset(
                        fit: BoxFit.cover,
                        "assets/website/tbs_tv_screens/Image.png"),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: [
                              BoxShadow(
                                color: Color(0x0C000000),
                                blurRadius: 25,
                                offset: Offset(0, 20),
                                spreadRadius: -12,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  height: 100.h,
                                  width: 140.w,
                                  "assets/website/tbs_tv_screens/Image.png"),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text('Lecture 2',
                                  style: AppTextStyles.interStyle.copyWith(
                                    color: Color(0xFF101130),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: [
                              BoxShadow(
                                color: Color(0x0C000000),
                                blurRadius: 25,
                                offset: Offset(0, 20),
                                spreadRadius: -12,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  height: 100.h,
                                  width: 140.w,
                                  "assets/website/tbs_tv_screens/Image.png"),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text('Lecture 3',
                                  style: AppTextStyles.interStyle.copyWith(
                                    color: Color(0xFF101130),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: [
                              BoxShadow(
                                color: Color(0x0C000000),
                                blurRadius: 25,
                                offset: Offset(0, 20),
                                spreadRadius: -12,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  height: 100.h,
                                  width: 140.w,
                                  "assets/website/tbs_tv_screens/Image.png"),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text('Lecture 4',
                                  style: AppTextStyles.interStyle.copyWith(
                                    color: Color(0xFF101130),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
             padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
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
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'Featured Episodes',
                    style:AppTextStyles.bebasStyle.copyWith(color: const Color(0xFF333333),
                      fontSize: 48.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,)
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                  Expanded(
                      child: GestureDetector(
                        onTap:tbsDetails ,

                        child: VideoWidget(imagePath: "assets/website/new/Rectangle 1566.png",
                            name: "Trucker tries to just drive away after crunching...",
                            newsType: "Trucking News",
                            timePeriod: "10 hours ago",
                            description: "Trucker tries to just drive away after crunching..."),
                      ),
                    ),
                    SizedBox(width: 10.w,),

                    const Expanded(
                      child: VideoWidget(imagePath: "assets/website/new/Rectangle 1570.png",
                          name: "Trucker tries to just drive away after crunching...",
                          newsType: "Trucking News",
                          timePeriod: "10 hours ago",
                          description: "Trucker tries to just drive away after crunching..."),
                    ),
                    SizedBox(width: 10.w,),

                    const Expanded(
                      child: VideoWidget(imagePath: "assets/website/new/Rectangle 1572.png",
                          name: "Trucker tries to just drive away after crunching...",
                          newsType: "Trucking News",
                          timePeriod: "10 hours ago",
                          description: "Trucker tries to just drive away after crunching..."),
                    ),
                    SizedBox(width: 10.w,),

                    const Expanded(
                      child: VideoWidget(imagePath: "assets/website/new/Rectangle 1571.png",
                          name: "Trucker tries to just drive away after crunching...",
                          newsType: "Trucking News",
                          timePeriod: "10 hours ago",
                          description: "Trucker tries to just drive away after crunching..."),
                    ),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
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
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'Newest Arrivals',
                    style:AppTextStyles.bebasStyle.copyWith(color: const Color(0xFF333333),
                      fontSize: 48.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,)
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    const Expanded(
                      child: VideoWidget(imagePath: "assets/website/new/Rectangle 1566.png",
                          name: "Trucker tries to just drive away after crunching...",
                          newsType: "Trucking News",
                          timePeriod: "10 hours ago",
                          description: "Trucker tries to just drive away after crunching..."),
                    ),
                    SizedBox(width: 10.w,),

                    const Expanded(
                      child: VideoWidget(imagePath: "assets/website/new/Rectangle 1570.png",
                          name: "Trucker tries to just drive away after crunching...",
                          newsType: "Trucking News",
                          timePeriod: "10 hours ago",
                          description: "Trucker tries to just drive away after crunching..."),
                    ),
                    SizedBox(width: 10.w,),

                    const Expanded(
                      child: VideoWidget(imagePath: "assets/website/new/Rectangle 1572.png",
                          name: "Trucker tries to just drive away after crunching...",
                          newsType: "Trucking News",
                          timePeriod: "10 hours ago",
                          description: "Trucker tries to just drive away after crunching..."),
                    ),
                    SizedBox(width: 10.w,),

                    const Expanded(
                      child: VideoWidget(imagePath: "assets/website/new/Rectangle 1571.png",
                          name: "Trucker tries to just drive away after crunching...",
                          newsType: "Trucking News",
                          timePeriod: "10 hours ago",
                          description: "Trucker tries to just drive away after crunching..."),
                    ),

                  ],
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
