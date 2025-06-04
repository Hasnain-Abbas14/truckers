import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/screen/website_screen/road_report/create_road_report.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/services/road_report_service.dart';
import 'package:truckerbs_website/models/road_report_model.dart';

import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_footer.dart';

class RoadReport extends StatefulWidget {
  const RoadReport({super.key});

  @override
  State<RoadReport> createState() => _RoadReportState();
}

class _RoadReportState extends State<RoadReport> {
  bool isCreateReport = false;
  bool isChecked = false;
  bool isCheckedOne = false;
  bool isCheckedTwo = false;
  bool isCheckedThree = false;
  final RoadReportService _roadReportService = RoadReportService();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: isCreateReport == true
          ? const CreateRoadReport()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Road Report',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bebasStyle.copyWith(
                          color: const Color(0xFF333333),
                          fontSize: 79.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.58,
                        )),
                    const Spacer(),
                    CustomButton(
                      title: "Create Report",
                      onTap: () {
                        setState(() {
                          isCreateReport = !isCreateReport;
                        });
                      },
                      width: MediaQuery.sizeOf(context).width * 0.28.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 1720.w,
                  height: 700.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 1.7,
                      image: AssetImage(
                        "assets/website/tbs_tv_screens/Group 31598.png",
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Road Report',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bebasStyle.copyWith(
                          color: Colors.white,
                          fontSize: 150.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Submit stories, report incidents, near misses, or recognize\nfellow drivers.',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: Colors.white,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
                      SizedBox(height: 20.h),
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
                        child: TextFormField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 20.h,
                                  width: 20.w,
                                  "assets/website/loadboard_overview/filter-list-svgrepo-com (1) 1.png"),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 20.h,
                                  width: 20.w,
                                  "assets/website/auth_screen/Combined-Shape.png"),
                            ),
                            hintText: "Search for loads by keyword or location...",
                            enabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.24,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(color: AppColors.redColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8).w,
                              borderSide: const BorderSide(color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      StreamBuilder<List<RoadReportModel>>(
                        stream: _roadReportService.getRoadReports(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Center(
                              child: Text('Error: ${snapshot.error}'),
                            );
                          }

                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          final reports = snapshot.data ?? [];
                          
                          if (reports.isEmpty) {
                            return const Center(
                              child: Text('No reports found'),
                            );
                          }

                          return GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: reports.length,
                            padding: EdgeInsets.zero,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.w,
                                mainAxisSpacing: 10.w),
                            itemBuilder: (BuildContext context, int index) {
                              final report = reports[index];
                              return Container(
                                width: 774.w,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                  shadows: [
                                    const BoxShadow(
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
                                    if (report.fileUrl.isNotEmpty)
                                      Image.network(
                                        report.fileUrl,
                                        height: 300.h,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Image.asset(
                                            "assets/image/user/Rectangle 1640.png",
                                            height: 300.h,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          );
                                        },
                                      )
                                    else
                                      Image.asset(
                                        "assets/image/user/Rectangle 1640.png",
                                        height: 300.h,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    Padding(
                                      padding: EdgeInsets.all(8.w),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            report.description,
                                            style: AppTextStyles.mulishStyle.copyWith(
                                              color: const Color(0xFF333333),
                                              fontSize: 36.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25.h,
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: const Color(0xFF3322F9),
                                                size: 25.r,
                                              ),
                                              Text(
                                                report.location,
                                                style: AppTextStyles.semiBoldStyle.copyWith(
                                                  color: const Color(0xFF3422FA),
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30.w,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  report.reportType,
                                                  style: AppTextStyles.semiBoldStyle.copyWith(
                                                    color: const Color(0x99333333),
                                                    fontSize: 24.sp,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 148.w,
                                                height: 50.h,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFFF0000),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.r)),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'View More',
                                                    style: AppTextStyles.mulishStyle.copyWith(
                                                      color: Colors.white,
                                                      fontSize: 16.sp,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomFooter(),
              ],
            ),
    );
  }
}
