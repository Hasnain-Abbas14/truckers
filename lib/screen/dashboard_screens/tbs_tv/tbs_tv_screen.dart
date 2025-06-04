import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:truckerbs_website/screen/dashboard_screens/message_tab/tabs/persnoal_tab.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/all_widget.dart';

class TbsTvDashboard extends StatefulWidget {
  const TbsTvDashboard({super.key});

  @override
  State<TbsTvDashboard> createState() => _TbsTvDashboardState();
}

class _TbsTvDashboardState extends State<TbsTvDashboard> {
  bool isAdd=false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Text(
            'Upload Episode',
            style: AppTextStyles.nunito.copyWith(color: Color(0xFF030229),
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,),
          ),
          SizedBox(height: 20.h,),
          isAdd==false?
          Container(
            width: 1162.w,
            height: 1522.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        width: 136.w,
                        title: "Add", onTap: (){
                          setState(() {
                            isAdd=true;
                          });
                    })

                  ],
                ),
                SizedBox(height: 30.h,),

                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Expanded(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          VideoWidget(imagePath: "assets/website/new/Rectangle 1566.png",
                              name: "Trucker tries to just drive away after crunching...",
                              newsType: "Trucking News",
                              timePeriod: "10 hours ago",
                              description: "Trucker tries to just drive away after crunching..."),
                          Positioned(
                            right: 10.w,top: 10.h,
                            child:
                            PopupMenuButton(
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                    padding: EdgeInsets.zero,
                                    height: 40,
                                    onTap: () {
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.edit,color: Color(0xff5B93FF),),
                                          SizedBox(width: 10.w,),
                                          Text(
                                            'Edit',
                                            style:AppTextStyles.nunito.copyWith( color: Color(0xFF5B92FF),
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                  PopupMenuItem(
                                    padding: EdgeInsets.zero,
                                    height: 40,
                                    onTap: () {
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.delete,color: Color(0xFFE71D36),),
                                          SizedBox(width: 10.w,),
                                          Text(
                                            'Delete',
                                            style:AppTextStyles.nunito.copyWith( color: Color(0xFFE71D36),
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),

                                ];
                              },
                              offset: const Offset(0, 30),
                              color: AppColors.primaryWhite,
                              surfaceTintColor: AppColors.primaryWhite,
                              icon:   CircleAvatar(
                                radius: 25.r,
                                backgroundColor:AppColors.primaryColor,
                                child: Icon(Icons.more_vert,color: AppColors.primaryWhite,),
                              )
                            ),


                          ),
                        ],
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
          ):
          Container(
            width: 1162.w,
            height: 1522.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Video / Photo File ',
                        style: AppTextStyles.mulishStyle.copyWith(  color: Color(0xFF828282),
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,)
                      ),
                      TextSpan(
                        text: '(you can add multiple)',
                        style: AppTextStyles.mulishStyle.copyWith(     color: Color(0xFF828282),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,)
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30.h,),
                Container(
                  width: 396.05.w,
                  height: 80.h,
                  decoration: ShapeDecoration(
                    color: Color(0x19FF0000),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.attach_file_outlined,color:  Color(0xFF262626),),
                        SizedBox(width: 10.w,),
                        Text(
                          'Upload File',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith( color: Color(0xFF262626),
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.32,)
                        )
                      ],
                  ),
                ),
                SizedBox(height: 30.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Episode Number',
                            style: AppTextStyles.nunito.copyWith( color: Color(0xFF030229),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 10.h,),
                          ReusableTextForm(
                            hintText: 'Episode',
                          ),

                        ],
                      ),
                    ),
SizedBox(width: 10.w
  ,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              'Title',
                              style: AppTextStyles.nunito.copyWith( color: Color(0xFF030229),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,)
                          ),
                          SizedBox(height: 10.h,),
                          ReusableTextForm(
                            hintText: 'Title',
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.h,),
                Text(
                    'Description',
                    style: AppTextStyles.nunito.copyWith( color: Color(0xFF030229),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,)
                ),
                SizedBox(height: 20.h,),
                ReusableTextForm(
                  maxLine: 6,
                  hintText: 'Description',
                ),
                SizedBox(height: 30.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        width: 200.w,
                        title: "Upload", onTap: (){}),
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
