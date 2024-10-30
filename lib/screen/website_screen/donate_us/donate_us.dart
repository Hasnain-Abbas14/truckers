import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stepindicator/flutter_stepindicator.dart';
import 'package:truckerbs_website/themes/app_colors.dart';

import '../../../themes/app_text_styles.dart';

class DonateUs extends StatefulWidget {
  const DonateUs({super.key});

  @override
  State<DonateUs> createState() => _DonateUsState();
}

class _DonateUsState extends State<DonateUs> {
  int page = 0;
  int counter = 3;
  List list = [
    0,1,2
  ];

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 1720.w,
            height: 700.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: const DecorationImage(
                fit: BoxFit.cover,
                opacity: 1.7,
                image: AssetImage(
                  "assets/website/tbs_tv_screens/donateUs.png",
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Support Our Community',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bebasStyle.copyWith(
                    color: Colors.white,
                    fontSize: 140.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Your Contribution Helps Us Keep the Platform Growing!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: Colors.white,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    width: 569.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 3, color: Color(0xFFFF0000)),
                        borderRadius: BorderRadius.circular(60.r),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x7FFFFFFF),
                          blurRadius: 30,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text('Make a Donation',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF262626),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
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
                Center(
                  child: Text('Why Your Donation Matters',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bebasStyle.copyWith(
                        color: const Color(0xFF333333),
                        fontSize: 54.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                    'We are 100% run by truckers, for truckers. No outside investors — just us, together.',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.63,
                    )),
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
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text:
                                        'Brief explanation of how donations will be used:\n',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.63,
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 5.r,
                                backgroundColor: const Color(0xFF262626),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Hiring writers to provide quality content',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 26.sp,
                                    letterSpacing: -0.63,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 5.r,
                                backgroundColor: const Color(0xFF262626),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                  'Paying developers to enhance platform features',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 26.sp,
                                    letterSpacing: -0.63,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 5.r,
                                backgroundColor: const Color(0xFF262626),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Covering hosting and maintenance costs',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 26.sp,
                                    letterSpacing: -0.63,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 5.r,
                                backgroundColor: const Color(0xFF262626),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                  'Growing and sustaining our trucker-led community',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 26.sp,
                                    letterSpacing: -0.63,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Image.asset(
                      "assets/website/tbs_tv_screens/donation-miscellaneous-svgrepo-com 1.png",
                      height: MediaQuery.sizeOf(context).height * 0.5.h,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.w),
            width: 1720.w,
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
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.h,),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.40.w,
                  child: FlutterStepIndicator(
                    height: 28.h,
                    paddingLine: EdgeInsets.symmetric(horizontal: 0.w),
                    positiveColor: AppColors.primaryColor,
                    progressColor: AppColors.primaryColor,
                    negativeColor: const Color(0xFFD9D9D9),
                    padding: EdgeInsets.all(4.w),
                    list: list,
                    division: counter,
                    onChange: (i) {},
                    page: page,
                    onClickItem: (p0) {
                      setState(() {
                        page = p0;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20.h,),

                page==0?
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose Your Contribution',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bebasStyle.copyWith(color: const Color(0xFF333333),
                        fontSize: 64.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,)
                    ),
                    SizedBox(height: 10.h,),
                    SizedBox(
                      width: 600.w,
                      child: Column(
                        children: [
                          Container(
                            width:600.w,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 2, color: Color(0xFFFF0000)),
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap:(){
                                      setState(() {
                                        _currentIndex=0;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal:5.w,vertical: 10.h),
                                      decoration: ShapeDecoration(
                                        color: _currentIndex==0?const Color(0xFFFF0000):Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.r),
                                            bottomLeft: Radius.circular(16.r),
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        child:
                                        Text(
                                          'One-Time',
                                          style:AppTextStyles.mulishStyle.copyWith( color: _currentIndex==0?Colors.white:AppColors.primaryColor,
                                            fontSize: 26.sp,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: -0.63,)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap:(){
                                      setState(() {
                                        _currentIndex=1;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
                                      decoration: ShapeDecoration(
                                        color: _currentIndex==1?const Color(0xFFFF0000):Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(16.r),
                                            bottomRight: Radius.circular(16.r),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Monthly',
                                            style: AppTextStyles.mulishStyle.copyWith( color:_currentIndex==1? Colors.white:AppColors.primaryColor,
                                              fontSize: 26.sp,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.63,)
                                          ),
                                          SizedBox(width: 10.w,),
                                          Icon(Icons.favorite,color: _currentIndex==1?Colors.white:AppColors.primaryColor,size: 25.r,)


                                        ],
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                          SizedBox(height: 20.h,),

                         _currentIndex==0?
                         Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 165.w,
                                    height: 80.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFF8E8E93)),
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          '\$10',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                            fontSize: 28.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.63,)
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 165.w,
                                    height: 80.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFF8E8E93)),
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          '\$20',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                            fontSize: 28.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.63,)
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 165.w,
                                    height: 80.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFF8E8E93)),
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          '\$30',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                            fontSize: 28.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.63,)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 165.w,
                                    height: 80.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFF8E8E93)),
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          '\$100',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                            fontSize: 28.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.63,)
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 165.w,
                                    height: 80.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFF8E8E93)),
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          '\$200',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                            fontSize: 28.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.63,)
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 165.w,
                                    height: 80.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Color(0xFF8E8E93)),
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          '\$300',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                            fontSize: 28.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.63,)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h,),
                              TextFormField(


                                decoration: InputDecoration(

                                  hintText: "Custom Amount",
                                  enabledBorder:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8).w,
                                    borderSide: const BorderSide(
                                        color: Color(0xFF8E8E93)
                                    ),
                                  ),
                                  hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.63,),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8).w,
                                    borderSide: const BorderSide(
                                        color: AppColors.redColor
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8).w,
                                    borderSide: const BorderSide(
                                        color: Color(0xFF8E8E93)
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8).w,
                                    borderSide: const BorderSide(
                                        color: AppColors.primaryColor
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ):
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text(
                                   '\$1',
                                   textAlign: TextAlign.center,
                                   style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                     fontSize: 128.sp,
                                     fontWeight: FontWeight.w400,
                                     letterSpacing: -0.63,)
                                 ),
                                 SizedBox(width: 8.w,),
                                 Text(
                                   '/month',
                                   style:AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF8E8E93),
                                     fontSize: 32.sp,
                                     fontWeight: FontWeight.w400,
                                     letterSpacing: -0.63,)
                                 )
                               ],
                             ),
                             SizedBox(height: 20.h
                               ,),
                             TextFormField(


                               decoration: InputDecoration(

                                 hintText: "Custom Amount",
                                 enabledBorder:OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8).w,
                                   borderSide: const BorderSide(
                                       color: Color(0xFF8E8E93)
                                   ),
                                 ),
                                 hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                   fontSize: 36.sp,
                                   fontWeight: FontWeight.w400,
                                   letterSpacing: -0.63,),
                                 errorBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8).w,
                                   borderSide: const BorderSide(
                                       color: AppColors.redColor
                                   ),
                                 ),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8).w,
                                   borderSide: const BorderSide(
                                       color: Color(0xFF8E8E93)
                                   ),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8).w,
                                   borderSide: const BorderSide(
                                       color: AppColors.primaryColor
                                   ),
                                 ),

                               ),
                             ),
                           ],
                         ),
                        ],
                      ),
                    ),
                  ],
                )
                    :page==1?
               Column(
                 crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     'Choose Payment method',
                     textAlign: TextAlign.center,
                     style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                       fontSize: 64.sp,
                       fontWeight: FontWeight.w400,
                       letterSpacing: -0.58,)
                   ),
                   SizedBox(height: 20.h,),
                   Container(
                     width: 594.w,
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
                       crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Icon(Icons.credit_card_rounded,color: const Color(0xff06B4FF),size: 25.r,),
                             SizedBox(width: 10.w,),
                             Text(
                               'Credit Card',
                               style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                 fontSize: 36.sp,
                                 fontWeight: FontWeight.w400,
                                 letterSpacing: -0.63,)
                             )
                           ],
                         ),
                         SizedBox(height: 20.h,),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Expanded(
                               child: TextFormField(
                                 decoration: InputDecoration(

                                   hintText: "Expiry",
                                   enabledBorder:OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topLeft: const Radius.circular(8).w,bottomLeft: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: Color(0xFF8E8E93)
                                     ),
                                   ),
                                   hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                     fontSize: 36.sp,
                                     fontWeight: FontWeight.w400,
                                     letterSpacing: -0.63,),
                                   errorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topLeft: const Radius.circular(8).w,bottomLeft: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: AppColors.redColor
                                     ),
                                   ),
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topLeft: const Radius.circular(8).w,bottomLeft: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: Color(0xFF8E8E93)
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topLeft: const Radius.circular(8).w,bottomLeft: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: AppColors.primaryColor
                                     ),
                                   ),

                                 ),
                               ),
                             ),
                             Expanded(
                               child: TextFormField(
                                 decoration: InputDecoration(

                                   hintText: "CVC",
                                   enabledBorder:const OutlineInputBorder(
                                     borderRadius: BorderRadius.zero,
                                     borderSide: BorderSide(
                                         color: Color(0xFF8E8E93)
                                     ),
                                   ),
                                   hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                     fontSize: 36.sp,
                                     fontWeight: FontWeight.w400,
                                     letterSpacing: -0.63,),
                                   errorBorder: const OutlineInputBorder(
                                     borderRadius: BorderRadius.zero,  borderSide: BorderSide(
                                         color: AppColors.redColor
                                     ),
                                   ),
                                   border: const OutlineInputBorder(
                                     borderRadius: BorderRadius.zero,
                                     borderSide: BorderSide(
                                         color: Color(0xFF8E8E93)
                                     ),
                                   ),
                                   focusedBorder: const OutlineInputBorder(
                                     borderRadius: BorderRadius.zero,
                                     borderSide: BorderSide(
                                         color: AppColors.primaryColor
                                     ),
                                   ),

                                 ),
                               ),
                             ),
                             Expanded(
                               child: TextFormField(
                                 decoration: InputDecoration(

                                   hintText: "Billing Zip",
                                   enabledBorder:OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topRight: const Radius.circular(8).w,bottomRight: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: Color(0xFF8E8E93)
                                     ),
                                   ),
                                   hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                     fontSize: 36.sp,
                                     fontWeight: FontWeight.w400,
                                     letterSpacing: -0.63,),
                                   errorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topRight: const Radius.circular(8).w,bottomRight: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: AppColors.redColor
                                     ),
                                   ),
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topRight: const Radius.circular(8).w,bottomRight: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: Color(0xFF8E8E93)
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.only(topRight: const Radius.circular(8).w,bottomRight: const Radius.circular(8).w),
                                     borderSide: const BorderSide(
                                         color: AppColors.primaryColor
                                     ),
                                   ),

                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 20.h,),
                         Container(
                           width: 524.w,
                           height: 100.h,
                           padding: EdgeInsets.symmetric(horizontal: 15.w),
                           decoration: ShapeDecoration(
                             color: Colors.white,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(16.r),
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
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Image.asset("assets/website/photos/Group 31551.png",height: 60.h,width: 80.w,),
                               SizedBox(width: 15.w,),
                               Text(
                                 'PayPal',
                                 style:AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                                   fontSize: 36.sp,
                                   fontWeight: FontWeight.w400,
                                   letterSpacing: -0.63,)
                               )
                             ],
                           ),
                         ),

                       ],
                     ),
                   )
                 ],
               )
                    :  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Thank You',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bebasStyle.copyWith( color: const Color(0xFF333333),
                          fontSize: 64.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.58,)
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      width: 594.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            height: 100.h,width: 100.w,
                            "assets/website/photos/inverted-commas-svgrepo-com 2.png",),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Thank you for your generous contribution! Your support helps us keep the trucking community strong and thriving.',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF828282),
                                      fontSize: 36.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.63,)
                                  ),
                                ),
                                Image.asset(
                                  height: 100.h,width: 100.w,
                                  "assets/website/photos/inverted-commas-svgrepo-com 1.png",),

                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40.h,),

               page!=2? GestureDetector(
                  onTap: () {
                    setState(() {
                      if (page < list.length) {
                        setState(() {
                          page++;
                        });
                      }
                    });
                  },
                  child: Container(
                    width: 594.w,
                    padding:
                    EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 3, color: Color(0xFFFF0000)),
                        borderRadius: BorderRadius.circular(60.r),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x7FFFFFFF),
                          blurRadius: 30,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(page==0?'Donate Now':'Pay Now',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF262626),
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                ):const SizedBox(),
                SizedBox(height: 20.h,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
