import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/all_widget.dart';

import '../../../../widget/custom_footer.dart';

class NewScreen extends StatelessWidget {
  final VoidCallback onTapDetails;
  const NewScreen({super.key, required this.onTapDetails});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                title: "Breaking News",
                onTap: () {},
                width: MediaQuery.sizeOf(context).width * 0.20.w,
              ),
              SizedBox(
                width: 15.w,
              ),
              Expanded(
                child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry....',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text('Read More',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width*0.70,
                padding: EdgeInsets.all(20.w),
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
                    Text(
                      'Featured News Articles',
                      style:AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                        fontSize: 48.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,)
                    ),
                    SizedBox(height: 25.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: onTapDetails,
                          child: Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.20.w,
                              "assets/website/new/Rectangle 1570.png"),
                        ),
                        SizedBox(width: 15.w,),
                        Expanded(
                          child
                              : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Trucker tries to just drive away after crunching luxury car at fuel island',
                                style: AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF262626),
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,)
                              ),
                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,)
                              ),
                              SizedBox(height: 15.h,),
                              Row(
                                children: [
                                  Text(
                                    'TRUCKING NEWS',
                                    style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,)
                                  ),
                                  SizedBox(width: 15.w,),
                                  Text(
                                    '16 hours ago',
                                    style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,)
                                  )
                                ],
                              )

                          ],),
                        )

                      ],
                    ),
                    SizedBox(height: 25.h,),
                    const Divider(thickness: 1,height: 1,color: Color(0xffE1E1E1),),
                    SizedBox(height: 25.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                            width: MediaQuery.sizeOf(context).width*0.20.w,
                            "assets/website/new/Rectangle 1571.png"),
                        SizedBox(width: 15.w,),
                        Expanded(
                          child
                              : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  'Trucker tries to just drive away after crunching luxury car at fuel island',
                                  style: AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,)
                              ),
                              Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,)
                              ),
                              SizedBox(height: 15.h,),
                              Row(
                                children: [
                                  Text(
                                      'TRUCKING NEWS',
                                      style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,)
                                  ),
                                  SizedBox(width: 15.w,),
                                  Text(
                                      '16 hours ago',
                                      style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,)
                                  )
                                ],
                              )

                            ],),
                        )


                      ],
                    ),
                    SizedBox(height: 25.h,),
                    const Divider(thickness: 1,height: 1,color: Color(0xffE1E1E1),),
                    SizedBox(height: 25.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                            width: MediaQuery.sizeOf(context).width*0.20.w,
                            "assets/website/new/Rectangle 1572.png"),
                        SizedBox(width: 15.w,),
                        Expanded(
                          child
                              : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  'Trucker tries to just drive away after crunching luxury car at fuel island',
                                  style: AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,)
                              ),
                              Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                  style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,)
                              ),
                              SizedBox(height: 15.h,),
                              Row(
                                children: [
                                  Text(
                                      'TRUCKING NEWS',
                                      style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,)
                                  ),
                                  SizedBox(width: 15.w,),
                                  Text(
                                      '16 hours ago',
                                      style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,)
                                  )
                                ],
                              )

                            ],),
                        )


                      ],
                    ),
                    SizedBox(height: 25.h,),
                    const Divider(thickness: 1,height: 1,color: Color(0xffE1E1E1),),
                    SizedBox(height: 25.h,),
                  ],
                ),
              ),
              SizedBox(width: 30.w,),
              Expanded(
                child: Container(
                 padding: EdgeInsets.all(20.w)  ,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
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
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(child: Divider(thickness: 1,height: 1,color: AppColors.primaryColor,)),
                          SizedBox(width: 8.w,),
                          Text(
                            'The Latest Trucking News',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.40,)
                          ),
                          SizedBox(width: 8.w,),
                          const Expanded(child: Divider(thickness: 1,height: 1,color: AppColors.primaryColor,)),

                        ],
                      ),
                      SizedBox(height: 25.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Trucker tries to just drive away after crunching luxury car at fuel island',
                                  style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,)
                                ),
                                Row(
                                  children: [
                                    Text(
                                        'TRUCKING NEWS',
                                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    SizedBox(width: 8.w,),
                                    Text(
                                        '16 hours ago',
                                        style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,)
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.10.w,
                              "assets/website/new/Rectangle 1560.png"),

                        ],
                      ),

                      SizedBox(height: 25.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    'Trucker tries to just drive away after crunching luxury car at fuel island',
                                    style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                Row(
                                  children: [
                                    Text(
                                        'TRUCKING NEWS',
                                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    SizedBox(width: 8.w,),
                                    Text(
                                        '16 hours ago',
                                        style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,)
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.10.w,
                              "assets/website/new/Rectangle 1561.png"),

                        ],
                      ),

                      SizedBox(height: 25.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    'Trucker tries to just drive away after crunching luxury car at fuel island',
                                    style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                Row(
                                  children: [
                                    Text(
                                        'TRUCKING NEWS',
                                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    SizedBox(width: 8.w,),
                                    Text(
                                        '16 hours ago',
                                        style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,)
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.10.w,
                              "assets/website/new/Rectangle 1562.png"),

                        ],
                      ),


                      SizedBox(height: 25.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    'Trucker tries to just drive away after crunching luxury car at fuel island',
                                    style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                Row(
                                  children: [
                                    Text(
                                        'TRUCKING NEWS',
                                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    SizedBox(width: 8.w,),
                                    Text(
                                        '16 hours ago',
                                        style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,)
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.10.w,
                              "assets/website/new/Rectangle 1564.png"),

                        ],
                      ),


                      SizedBox(height: 25.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    'Trucker tries to just drive away after crunching luxury car at fuel island',
                                    style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                Row(
                                  children: [
                                    Text(
                                        'TRUCKING NEWS',
                                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    SizedBox(width: 8.w,),
                                    Text(
                                        '16 hours ago',
                                        style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,)
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.10.w,
                              "assets/website/new/Rectangle 1565.png"),

                        ],
                      ),


                      SizedBox(height: 25.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    'Trucker tries to just drive away after crunching luxury car at fuel island',
                                    style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                Row(
                                  children: [
                                    Text(
                                        'TRUCKING NEWS',
                                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    SizedBox(width: 8.w,),
                                    Text(
                                        '16 hours ago',
                                        style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,)
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.10.w,
                              "assets/website/new/Rectangle 1570.png"),

                        ],
                      ),

                      SizedBox(height: 25.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    'Trucker tries to just drive away after crunching luxury car at fuel island',
                                    style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF262626),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,)
                                ),
                                Row(
                                  children: [
                                    Text(
                                        'TRUCKING NEWS',
                                        style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                    SizedBox(width: 8.w,),
                                    Text(
                                        '16 hours ago',
                                        style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,)
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Image.asset(
                              width: MediaQuery.sizeOf(context).width*0.10.w,
                              "assets/website/new/Rectangle 1566.png"),

                        ],
                      ),




                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30.h,),
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
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
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'NEWS Videos',
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
                SizedBox(height: 20.h,),
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
                )

              ],
            ),
          ),
          CustomFooter(),

        ],
      ),
    );
  }
}
