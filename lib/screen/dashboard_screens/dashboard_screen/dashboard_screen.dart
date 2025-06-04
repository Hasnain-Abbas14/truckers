import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../model/data_model.dart';
import '../../../model/pie_model.dart';
import '../../../model/report_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final List<DataModel> dataList = [
    DataModel(
      tutorName: 'Usama Khan',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$20',
      loadSize: 'Heavy',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Rameez',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$440',
      loadSize: 'Medium',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Wahid',
      dateOfBuying: 2023 - 10 - 1,
      price: '\$30',
      loadSize: 'Low',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Usama Khan',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$20',
      loadSize: 'Heavy',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Rameez',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$440',
      loadSize: 'Medium',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Wahid',
      dateOfBuying: 2023 - 10 - 1,
      price: '\$30',
      loadSize: 'Low',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Usama Khan',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$20',
      loadSize: 'Heavy',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Rameez',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$440',
      loadSize: 'Medium',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Wahid',
      dateOfBuying: 2023 - 10 - 1,
      price: '\$30',
      loadSize: 'Low',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Usama Khan',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$20',
      loadSize: 'Heavy',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Rameez',
      dateOfBuying: 2020 - 10 - 1,
      price: '\$440',
      loadSize: 'Medium',
      user: 'User Name',
    ),
    DataModel(
      tutorName: 'Wahid',
      dateOfBuying: 2023 - 10 - 1,
      price: '\$30',
      loadSize: 'Low',
      user: 'User Name',
    ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Dashboard',
                style: AppTextStyles.boldStyle
                    .copyWith(color: AppColors.hintColor, fontSize: 24.sp),
              ),
              const Spacer(),
              Text(
                'My Account',
                style: AppTextStyles.semiBoldStyle
                    .copyWith(color: AppColors.hintColor, fontSize: 14.sp),
              ),
           SizedBox(
                width: 10.w,
              ),
              Image.asset(
                "assets/image/home/user.png",
                height: 25.h,
                width: 25.w,
                color: AppColors.bColor,
              ),
            ],
          ),
       SizedBox(
            height: 10.h
            ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primaryColor.withOpacity(0.10),
                      radius: 25.r,
                      child: Image.asset(
                        "assets/image/home/user.png",
                        height: 25.h,
                        width: 25.w,
                        color: AppColors.bColor,
                      )),
                SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '245',
                        style: AppTextStyles.boldStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 22.sp),
                      ),
                      Text(
                        'New User',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primaryColor.withOpacity(0.10),
                      radius: 25.r,
                      child: Image.asset(
                        "assets/image/home/user.png",
                        height: 25.h,
                        width: 25.w,
                        color: AppColors.bColor,
                      )),
               SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '25',
                        style: AppTextStyles.boldStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 22.sp),
                      ),
                      Text(
                        'Active User',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primaryColor.withOpacity(0.10),
                      radius: 25.r,
                      child: Image.asset(
                        "assets/image/home/user.png",
                        height: 25.h,
                        width: 25.w,
                        color: AppColors.bColor,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1445',
                        style: AppTextStyles.boldStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 22.sp),
                      ),
                      Text(
                        'Total User',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primaryColor.withOpacity(0.10),
                      radius: 25.r,
                      child: Image.asset(
                        "assets/image/home/user.png",
                        height: 25.h,
                        width: 25.w,
                        color: AppColors.bColor,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '202',
                        style: AppTextStyles.boldStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 22.sp),
                      ),
                      Text(
                        'Inactive User',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ],
                  ),
                ],
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
                width:702.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Reports',
                          style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor, fontSize: 18.sp),
                        ),
                        const Spacer(),
                        Text(
                          'View All',
                          style: AppTextStyles.semiBoldStyle.copyWith(
                              color: AppColors.primaryBlue, fontSize: 10.sp),
                        ),
                      ],
                    ),
               SizedBox(
                      height: 10.h,
                    ),
                    SfCartesianChart(
                        primaryXAxis: const CategoryAxis(
                          isVisible: true,
                          minimum: 0,
                        ),
                        series: <SplineSeries<SalesData, String>>[
                          SplineSeries<SalesData, String>(
                            color: AppColors.primaryColor,
                            dataSource: <SalesData>[
                              SalesData('6 Jan', 60),
                              SalesData('8 Jan', 30),
                              SalesData('9 Jan', 40),
                              SalesData('11 Jan', 52),
                              SalesData('15 Jan', 20),
                              SalesData('17 Jan', 70),
                              SalesData('20 Jan', 100),
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales,
                            markerSettings:
                                const MarkerSettings(isVisible: true),
                          )
                        ]),
               SizedBox(
                      height: 10.h
                      ,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Recent Loads',
                          style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor, fontSize: 18.sp),
                        ),
                        const Spacer(),
                        Text(
                          'View All',
                          style: AppTextStyles.semiBoldStyle.copyWith(
                              color: AppColors.primaryColor, fontSize: 10.sp
                          ),
                        ),
                      ],
                    ),
              SizedBox(
                      height: 10.h,
                    ),
                    DataTable(
                      horizontalMargin: 40.w,
                      columnSpacing: 60.w,
                      dividerThickness: 0.w,
                      headingTextStyle: AppTextStyles.regularStyle.copyWith(
                          color: AppColors.hintColor, fontSize: 12.sp),
                      clipBehavior: Clip.none,
                      border: const TableBorder(
                          verticalInside: BorderSide.none,
                          bottom: BorderSide.none,
                          horizontalInside: BorderSide.none),
                      columns:  [
                        DataColumn(
                          label: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Text(
                                'Employee',
                                style: AppTextStyles.nunito.copyWith(color: Color(0xFF030229),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,),
                              ),

                              Icon(
                                size: 20.r,
                                Icons.arrow_drop_down_rounded,
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
                                'Date of Loading',
                                style: AppTextStyles.nunito.copyWith(color: Color(0xFF030229),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,),
                              ),
                              Icon(
                                size: 20.r,
                                Icons.arrow_drop_down_rounded,
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
                                'Price',
                                style: AppTextStyles.nunito.copyWith(color: Color(0xFF030229),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,),
                              ),

                              Icon(
                                size: 20.r,
                                Icons.arrow_drop_down_rounded,
                                color: AppColors.hintColor,
                              )
                            ],
                          ),
                        ),
                       DataColumn(
                          label: Text(
                            'Load Size',
                            style: AppTextStyles.nunito.copyWith(color: Color(0xFF030229),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,),

                          ),
                        ),
                       DataColumn(
                          label: Text(
                            'Load Owner',
                            style: AppTextStyles.nunito.copyWith(color: Color(0xFF030229),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,),
                          ),
                        ),
                      ],
                      rows: List.generate(
                          dataList.length,
                          (index) => DataRow(
                              cells: [
                                DataCell(Text(
                                  dataList[index].tutorName.toString(),
                                  style: AppTextStyles.regularStyle.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.primaryBlack
                                          .withOpacity(0.96)),

                                )),
                                DataCell(Text(
                                    dataList[index].dateOfBuying.toString(),
                                    style:AppTextStyles.regularStyle.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.primaryBlack
                                            .withOpacity(0.96)))),
                                DataCell(Text(dataList[index].price.toString(),
                                    style:AppTextStyles.regularStyle.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.primaryBlack
                                            .withOpacity(0.96)))),
                                DataCell(Text(
                                    dataList[index].loadSize.toString(),
                                    style: AppTextStyles.regularStyle.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.primaryBlack
                                            .withOpacity(0.96)))),
                                DataCell(Text(dataList[index].user.toString(),
                                    style: AppTextStyles.regularStyle.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.primaryBlack
                                            .withOpacity(0.96)))),
                              ])),
                    ),
                  ],
                ),
              ),
             SizedBox(
                width: 15.w
                ,
              ),
              SizedBox(
                width:430.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Analytics',
                          style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor, fontSize: 18.sp),
                        ),
                    SizedBox(
                          width: 15.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      height: 515.h,
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
                                              onDateChanged:
                                                  (DateTime? newDate) {
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
                            height: 50.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).r,
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
                        const Spacer(),
                        Text(
                          'View All',
                          style: AppTextStyles.semiBoldStyle.copyWith(
                              color: AppColors.primaryBlue, fontSize: 10.sp),
                        ),
                      ],
                    ),
              SizedBox(
                      height: 20.h,
                    ),
                    SfCircularChart(
                      legend: const Legend(
                        isVisible: true,

                        position: LegendPosition
                            .bottom, // Position the legend below the chart
                      ),
                      series: <DoughnutSeries<PieData, String>>[
                        DoughnutSeries<PieData, String>(
                          innerRadius: '60%',
                          dataSource: <PieData>[
                            PieData('New Loads', 20, AppColors.bColor),
                            PieData(
                                'Active Loads', 30, AppColors.primaryYellow),
                            PieData('Total Loads', 10, AppColors.primaryBlue),
                          ],
                          xValueMapper: (PieData data, _) => data.category,
                          yValueMapper: (PieData data, _) => data.sales,
                          pointColorMapper: (PieData data, _) => data.color,
                        ),
                      ],
                      annotations: <CircularChartAnnotation>[
                        CircularChartAnnotation(
                          widget: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+20%',
                                  style: AppTextStyles.boldStyle.copyWith(
                                      color: AppColors.hintColor, fontSize: 30.sp),
                                ),
                                Text(
                                  'New Stats',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor, fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Completed Loads',
                          style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor, fontSize: 18.sp),
                        ),
                        const Spacer(),
                        Text(
                          'View All',
                          style: AppTextStyles.semiBoldStyle.copyWith(
                              color: AppColors.primaryBlue, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:  EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 22.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.blackLight),
                        ),
                   SizedBox(
                          width: 10.w
                          ,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flatbed Load - 20 Tons',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor, fontSize: 15.sp),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
               SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w
                              , vertical: 22.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.blackLight),
                        ),
                        SizedBox(
                          width: 10.w
                          ,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flatbed Load - 20 Tons',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor, fontSize: 15.sp),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                   SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:  EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 22.h
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r
                              ),
                              color: AppColors.blackLight),
                        ),
                        SizedBox(
                          width: 10.w
                          ,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flatbed Load - 20 Tons',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor, fontSize: 15.sp),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowLight,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
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
