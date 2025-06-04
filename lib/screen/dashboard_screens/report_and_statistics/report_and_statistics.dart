import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../model/report_and_statistic_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import 'package:intl/intl.dart';

class ReportAndStatisticsTab extends StatefulWidget {
  const ReportAndStatisticsTab({super.key});

  @override
  State<ReportAndStatisticsTab> createState() => _ReportAndStatisticsTabState();
}

class _ReportAndStatisticsTabState extends State<ReportAndStatisticsTab> {
  final List<ReportAndStatsModel> dataList = [
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Senior',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'New',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Junior',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Senior',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'New',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Junior',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Senior',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'New',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Junior',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Senior',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'New',
        report: 'Unused Account'),
    ReportAndStatsModel(
        companyName: 'Trucker',
        userName: 'Abdullah',
        position: 'Junior',
        report: 'Unused Account'),
  ];

  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Reports & Statistics',
                style: AppTextStyles.boldStyle
                    .copyWith(color: AppColors.hintColor, fontSize: 24.sp),
              ),
              const Spacer(),
              SizedBox(
                width: 153.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primaryWhite,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.hintColor,
                    ),
                    hintText: 'Search',
                    hintStyle: AppTextStyles.regularStyle
                        .copyWith(color: AppColors.hintColor, fontSize: 10),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Image(
                  width: 25.w,
                  height: 25.h,
                  fit: BoxFit.cover,
                  image:
                      AssetImage("assets/image/home/excel-svgrepo-com 1.png")),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Export to Excel',
                style: AppTextStyles.semiBoldStyle
                    .copyWith(color: AppColors.greenColor, fontSize: 14.sp),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 266.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Container(
                                  height: 520.h,
                                  width: 500.w,
                                  padding: const EdgeInsets.all(16).w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Select Date Range',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      SizedBox(
                                        height: 350.h,
                                        child: CalendarDatePicker(
                                          firstDate: DateTime(2022),
                                          lastDate: DateTime(2050),
                                          onDateChanged: (DateTime? newDate) {
                                            setState(() {
                                              if (startDate == null) {
                                                startDate = newDate;
                                              } else if (endDate == null) {
                                                endDate = newDate;
                                              } else {
                                                startDate = newDate;
                                                endDate = null;
                                              }
                                            });
                                          },
                                          initialDate: DateTime.now(),
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Done'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).w,
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              startDate != null && endDate != null
                                  ? '${DateFormat('dd-MMM-yyyy').format(startDate!)} - ${DateFormat('dd-MMM-yyyy').format(endDate!)}'
                                  : 'Start Date - End Date',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor, fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.hintColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'User Reports',
                      style: AppTextStyles.boldStyle.copyWith(
                          color: AppColors.hintColor, fontSize: 16.sp),
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
                        hintText: 'Search for reports',
                        hintStyle: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 10),
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
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            AssetImage("assets/image/user/image.png"),
                      ),
                      title: Text(
                        'Eddie Lobanovskiy',
                        style: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 12),
                      ),
                      subtitle: Text(
                        'laboanovskiy@gmail.com',
                        style: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 10),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            AssetImage("assets/image/user/image.png"),
                      ),
                      title: Text(
                        'Eddie Lobanovskiy',
                        style: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 12),
                      ),
                      subtitle: Text(
                        'laboanovskiy@gmail.com',
                        style: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 10),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25.r,
                        backgroundImage:
                            AssetImage("assets/image/user/image.png"),
                      ),
                      title: Text(
                        'Eddie Lobanovskiy',
                        style: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 12),
                      ),
                      subtitle: Text(
                        'laboanovskiy@gmail.com',
                        style: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Statistics',
                          style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor, fontSize: 16.sp),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.more_vert,
                          color: AppColors.blackLight,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SfCartesianChart(
                        // Initialize category axis
                        primaryXAxis: const CategoryAxis(),
                        series: <CartesianSeries>[
                          ColumnSeries<SalesDataStats, String>(
                            width: 0.1.w,
                            borderRadius: BorderRadius.circular(10).w,
                            // Bind data source
                            dataSource: <SalesDataStats>[
                              SalesDataStats('Jan', 28, AppColors.primaryColor),
                              SalesDataStats('Feb', 12, AppColors.primaryColor),
                              SalesDataStats('Mar', 22, AppColors.primaryColor),
                              SalesDataStats('Apl', 30, AppColors.primaryColor),
                              SalesDataStats('May', 25, AppColors.primaryColor),
                            ],
                            xValueMapper: (SalesDataStats sales, _) =>
                                sales.year,
                            yValueMapper: (SalesDataStats sales, _) =>
                                sales.sales,
                            pointColorMapper: (SalesDataStats sales, _) =>
                                sales.color,
                          )
                        ])
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    DataTable(
                      border: const TableBorder(
                          verticalInside: BorderSide.none,
                          horizontalInside: BorderSide.none),
                      columns: [
                        DataColumn(
                          label: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Tutor',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.hintColor,
                                    fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.hintColor,
                              )
                            ],
                          ),
                        ),
                        DataColumn(
                          label: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'User',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.hintColor,
                                    fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.hintColor,
                              )
                            ],
                          ),
                        ),
                        DataColumn(
                          label: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Subscription',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.hintColor,
                                    fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.hintColor,
                              )
                            ],
                          ),
                        ),
                        DataColumn(
                          label: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Report',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.hintColor,
                                    fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.hintColor,
                              )
                            ],
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '',
                            style: AppTextStyles.regularStyle.copyWith(
                                color: AppColors.hintColor, fontSize: 12.sp),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '',
                            style: AppTextStyles.regularStyle.copyWith(
                                color: AppColors.hintColor, fontSize: 12.sp),
                          ),
                        ),
                      ],
                      rows: List.generate(
                          dataList.length,
                          (index) => DataRow(cells: [
                                DataCell(
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      StatefulBuilder(
                                        builder: (BuildContext context,
                                            void Function(void Function())
                                                setState) {
                                          return Checkbox(
                                            activeColor: AppColors.primaryColor,
                                            value: timeDilation != 1.0,
                                            onChanged: (value) {
                                              setState(() {
                                                timeDilation =
                                                    value! ? 2.0 : 1.0;
                                              });
                                            },
                                          );
                                        },
                                      ),
                                      Text(
                                        dataList[index].companyName.toString(),
                                        style: AppTextStyles.regularStyle
                                            .copyWith(
                                                fontSize: 12.w,
                                                color: AppColors.primaryBlack
                                                    .withOpacity(0.70)),
                                      )
                                    ],
                                  ),
                                ),
                                DataCell(Text(
                                    dataList[index].userName.toString(),
                                    style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,
                                        fontSize: 12.sp))),
                                DataCell(Text(
                                    dataList[index].position.toString(),
                                    style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,
                                        fontSize: 12.sp))),
                                DataCell(Container(
                                  height: 45.h,
                                  decoration: ShapeDecoration(
                                    color: Color(0xF109C4E9D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.50).w,
                                    ),
                                  ),
                                  child: Text(dataList[index].report.toString(),
                                      style: AppTextStyles.regularStyle
                                          .copyWith(
                                              color: Color(0xFF9C4E9D),
                                              fontSize: 12.sp)),
                                )),
                                const DataCell(Image(
                                  image:
                                      AssetImage("assets/image/user/Group.png"),
                                )),
                                DataCell(SvgPicture.asset(
                                    'assets/image/user/Delete.svg')),
                              ])),
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

class SalesDataStats {
  SalesDataStats(this.year, this.sales, this.color);

  final String year;
  final double sales;
  final Color color;
}
