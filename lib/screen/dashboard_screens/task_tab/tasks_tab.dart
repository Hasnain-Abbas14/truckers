import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/subscription_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class TasksTab extends StatefulWidget {
  const TasksTab({super.key});

  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  DateTime? startDate;
  DateTime? endDate;
  final List<TasksModel> taskData = [
    TasksModel(
        employeeName: "Jhon",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Pending",
        statusBackColor: const Color(0xf10FF9900)),
    TasksModel(
        employeeName: "William",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Approved",
        statusBackColor: const Color(0xf108E8E93)),
    TasksModel(
        employeeName: "Usama",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Cancelled",
        statusBackColor: const Color(0xf1000A14A)),
    TasksModel(
        employeeName: "Jhon",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Pending",
        statusBackColor: const Color(0xf10FF9900)),
    TasksModel(
        employeeName: "William",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Approved",
        statusBackColor: const Color(0xf108E8E93)),
    TasksModel(
        employeeName: "Usama",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Cancelled",
        statusBackColor: const Color(0xf1000A14A)),
    TasksModel(
        employeeName: "Jhon",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Pending",
        statusBackColor: const Color(0xf10FF9900)),
    TasksModel(
        employeeName: "William",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Approved",
        statusBackColor: const Color(0xf108E8E93)),
    TasksModel(
        employeeName: "Usama",
        startDate: "12-03-2012",
        endDate: "23-05-2023",
        price: "1200",
        loadSize: "low",
        loadOwner: "william",
        status: "Cancelled",
        statusBackColor: const Color(0xf1000A14A)),
  ];

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
                'Task',
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
            height: 25.h,
          ),
          Container(
            width: 1162.w,
            height: 838.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10).w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Recent Tasks',
                    style: AppTextStyles.boldStyle.copyWith(
                      color: AppColors.hintColor,
                      fontSize: 18.sp,
                    )),
                SizedBox(
                  height: 25.h,
                ),
                DataTable(
                  horizontalMargin: 25.w,
                  columnSpacing: 55.h,
                  dividerThickness: 0,
                  headingTextStyle: AppTextStyles.regularStyle
                      .copyWith(color: AppColors.hintColor, fontSize: 12.sp),
                  clipBehavior: Clip.none,
                  border: const TableBorder(
                      verticalInside: BorderSide.none,
                      bottom: BorderSide.none,
                      horizontalInside: BorderSide.none),
                  columns: [
                    DataColumn(
                      label: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Employee',
                            style: AppTextStyles.regularStyle.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.primaryBlack,
                            ),
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
                        'Start Date',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Price',
                            style: AppTextStyles.regularStyle.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.primaryBlack,
                            ),
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
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Load Owner',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Status',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Start Date',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        '',
                        style: AppTextStyles.regularStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ),
                  ],
                  rows: List.generate(
                    taskData.length,
                    (index) => DataRow(cells: [
                      DataCell(Text(
                        taskData[index].employeeName.toString(),
                        style: AppTextStyles.regularStyle.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.primaryBlack.withOpacity(0.96)),
                      )),
                      DataCell(Text(
                        taskData[index].startDate.toString(),
                        style: AppTextStyles.regularStyle.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.primaryBlack.withOpacity(0.96)),
                      )),
                      DataCell(Text(
                        taskData[index].price.toString(),
                        style: AppTextStyles.regularStyle.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.primaryBlack.withOpacity(0.96)),
                      )),
                      DataCell(Text(
                        taskData[index].loadSize.toString(),
                        style: AppTextStyles.regularStyle.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.primaryBlack.withOpacity(0.96)),
                      )),
                      DataCell(Text(
                        taskData[index].loadOwner.toString(),
                        style: AppTextStyles.regularStyle.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.primaryBlack.withOpacity(0.96)),
                      )),
                      DataCell(Container(
                        height: 29.h,
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        decoration: ShapeDecoration(
                          color: taskData[index].statusBackColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                        ),
                        child: Text(
                          taskData[index].status.toString(),
                          style: AppTextStyles.regularStyle.copyWith(
                              fontSize: 12.sp,
                              color: AppColors.primaryBlack.withOpacity(0.96)),
                        ),
                      )),
                      DataCell(Text(
                        taskData[index].endDate.toString(),
                        style: AppTextStyles.regularStyle.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.primaryBlack.withOpacity(0.96)),
                      )),
                      const DataCell(
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
