import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/app_list/app_list.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/all_widget.dart';

import '../../../themes/app_colors.dart';

class LoadboardsOverview extends StatelessWidget {
  final VoidCallback onTapPlaceBid;
  const LoadboardsOverview({super.key, required this.onTapPlaceBid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height*0.90.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            image: const DecorationImage(
              fit: BoxFit.cover,
              opacity: 1.7,
              image: AssetImage("assets/website/loadboard_overview/loadboardtop.png",)
            )
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Loadboard Overview',
                textAlign: TextAlign.center,
                style: AppTextStyles.bebasStyle.copyWith(  color: Colors.white,
                  fontSize: 150.sp,
                  fontWeight: FontWeight.w400,),
              ),
              Text(
                  'Find & Bid on Loads Nationwide',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(  color: Colors.white,
                    fontSize: 56.sp,
                    fontWeight: FontWeight.w700,)
              ),
              Text(
                'Browse available loads across the country and place your bids. Stay informed with real-time updates and secure your next job effortlessly.',
                textAlign: TextAlign.center,
                style: AppTextStyles.mulishStyle.copyWith( color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,)
              )


            ],
          ),
          ),
          SizedBox(height: 30.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 15.h),
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
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Bid on These Loads',
                  style: AppTextStyles.bebasStyle.copyWith(color: const Color(0xFF333333),
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.58,)
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(right: 30.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20).w,
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
                  child:

                  TextFormField(


                    decoration: InputDecoration(

                      suffixIcon:Padding(
                        padding:  EdgeInsets.all(10.w),
                        child: Image.asset(
                            height: 25.h,
                            width: 25.w,
                            "assets/website/loadboard_overview/filter-list-svgrepo-com (1) 1.png"),
                      ),
                      prefixIcon: Padding(
                        padding:  EdgeInsets.all(10.w),
                        child: Image.asset(
                            height: 25.h,
                            width: 25.w,
                            "assets/website/auth_screen/Combined-Shape.png"),
                      ),
                      hintText: "Search for loads by keyword or location...",
                      enabledBorder:InputBorder.none,
                      hintStyle: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF828282),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.24,),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8).w,
                        borderSide: const BorderSide(
                            color: AppColors.redColor
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8).w,
                        borderSide: const BorderSide(
                            color: Colors.transparent
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
                ),
                SizedBox(height: 15.h,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(4, (index)=> Expanded(
                    child: Padding(
                      padding:EdgeInsets.only(right: 10.w),
                      child: LoadBoardContainer(onTapPlaceBid: onTapPlaceBid),
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 10.h,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(4, (index)=> Expanded(
                    child: Padding(
                      padding:EdgeInsets.only(right: 10.w),
                      child: LoadBoardContainer(onTapPlaceBid: (){}),
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 10.h,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(4, (index)=> Expanded(
                    child: Padding(
                      padding:EdgeInsets.only(right: 10.w),
                      child: LoadBoardContainer(onTapPlaceBid: (){},),
                    ),
                  ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
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
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'Featured Loads',
                            style: AppTextStyles.bebasStyle.copyWith(  color: const Color(0xFF333333),
                              fontSize: 48.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.58,)
                        ),
                        Text(
                            'Check out the top loads that are receiving the most attention. Act fast and secure these opportunities.',
                            style: AppTextStyles.mulishStyle.copyWith(   color: const Color(0xFF8E8E93),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,)
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_back_ios,color: AppColors.primaryColor,),
                    const CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      radius: 15,
                      child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    ),
                  ],
                ),

                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(4, (index)=> Expanded(
                    child: Padding(
                      padding:EdgeInsets.only(right: 10.w),
                      child: LoadBoardContainer(onTapPlaceBid: (){},isFeatured: true,),
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
           padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
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
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Your Bidding History',
                          style: AppTextStyles.bebasStyle.copyWith(  color: const Color(0xFF333333),
                            fontSize: 48.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.58,)
                        ),
                        Text(
                          'Keep track of your recent bids and monitor the status of each load.',
                          style:AppTextStyles.mulishStyle.copyWith(     color: const Color(0xFF8E8E93),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,)
                        ),

                      ],
                    ),
                    const Spacer(),
                    Text(
                      'Approved',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w700,)
                    ),
                    SizedBox(width: 10.w,),
                    const Icon(Icons.arrow_drop_down_rounded,color: Color(0xff828282),)


                  ],
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                  decoration: ShapeDecoration(
                    color: const Color(0x4CE4E4E4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Table(
                        border: TableBorder.all(color: const Color(0xffD0D0D0)),
                        columnWidths: const {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(1),
                          3: FlexColumnWidth(1),
                          4: FlexColumnWidth(1),
                          5: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(
                            children: List.generate(tableColumnData.length, (index) {
                              return Padding(
                                padding: EdgeInsets.all(8.w),  // Responsive padding for table cells
                                child: Center(child: Text(tableColumnData[index], style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,))),
                              );
                            }),
                          ),
                          ...tableData.map((data) {
                            return TableRow(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 8.h),
                                  child: Center(child: Text(data.load,style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w700),)),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 8.h),
                                  child: Center(child: Text(data.bidAmount,style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,),)),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 8.h),
                                  child: Center(child: Text(data.status,style: AppTextStyles.mulishStyle.copyWith(color: data.status=='Rejected'?AppColors.primaryColor:data.status=='Approved'?const Color(0xFF0A9E22):data.status=='Cancelled'?const Color(0xFF606176):const Color(0xFFF2994A),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,),)),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 8.h),
                                  child: Center(child: Text(data.date,style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,),)),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 8.h),
                                  child: Center(child: Text(data.cancelBid,style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF606176),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,),)),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 8.h),
                                  child: Center(child: Text(data.viewBid,style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF262626),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,),),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
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
              crossAxisAlignment:
              CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Track Your Loads',
                  style:AppTextStyles.bebasStyle.copyWith(color: const Color(0xFF333333),
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.58,)
                ),
            Text(
                'View real-time updates on loads you\'ve secured. Stay informed from pickup to delivery.',
            style:AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,)
    ),
              SizedBox(height: 20.h,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:List.generate(4, (index)=> const Expanded(child: ReportIssueContainer(title: 'Flatbed Load - 20 Tons', status: 'In Transit', deliverDate: "2-10-24", link: 'Open Link')))
              )  

              ],
            ),
          ),
          SizedBox(height: 100.h,),

        ],
      ),
    );
  }
}



