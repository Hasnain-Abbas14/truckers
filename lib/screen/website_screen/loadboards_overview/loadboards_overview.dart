import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:truckerbs_website/app_list/app_list.dart';
import 'package:truckerbs_website/screen/website_screen/loadboards_overview/create_a_load.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/all_widget.dart';

import '../../../themes/app_colors.dart';
import '../../../widget/custom_footer.dart';

class LoadboardsOverview extends StatefulWidget {
  final VoidCallback onTapPlaceBid;
  const LoadboardsOverview({super.key, required this.onTapPlaceBid});

  @override
  State<LoadboardsOverview> createState() => _LoadboardsOverviewState();
}

class _LoadboardsOverviewState extends State<LoadboardsOverview> {
  bool isCreateLoad = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: isCreateLoad == false
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.90.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          opacity: 1.7,
                          image: AssetImage(
                            "assets/website/loadboard_overview/loadboardtop.png",
                          ))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Loadboard Overview',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bebasStyle.copyWith(
                          color: Colors.white,
                          fontSize: 150.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text('Find & Bid on Loads Nationwide',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Colors.white,
                            fontSize: 56.sp,
                            fontWeight: FontWeight.w700,
                          )),
                      Text(
                          'Browse available loads across the country and place your bids. Stay informed with real-time updates and secure your next job effortlessly.',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: Colors.white,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Bid on These Loads',
                              style: AppTextStyles.bebasStyle.copyWith(
                                color: const Color(0xFF333333),
                                fontSize: 48.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.58,
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isCreateLoad = !isCreateLoad;
                              });
                            },
                            child: Container(
                              width: 160.w,
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFF0000),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                              ),
                              child: Center(
                                child: Text('Create Load',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.13,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                  height: 25.h,
                                  width: 25.w,
                                  "assets/website/loadboard_overview/filter-list-svgrepo-com (1) 1.png"),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(height: 25.h, width: 25.w, "assets/website/auth_screen/Combined-Shape.png"),
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
                        height: 15.h,
                      ),
                      StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                        stream: FirebaseFirestore.instance.collection('loads').snapshots(),
                        builder: (ctx, snap) {
                          if (snap.hasError) {
                            return Center(child: Text('Error: ${snap.error}'));
                          }
                          if (!snap.hasData) {
                            return const Center(child: CircularProgressIndicator());
                          }
                          final loads = snap.data!.docs.map((doc) => LoadModel.fromDoc(doc)).toList();

                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: loads.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10.w,
                              mainAxisSpacing: 10.h,
                              childAspectRatio: 0.75,
                            ),
                            itemBuilder: (_, idx) {
                              final load = loads[idx];
                              return LoadBoardContainer(
                                title: load.title,
                                description: load.commodityDetails,
                                pickupDateTime: load.pickupDateTime,
                                deliveryDateTime: load.deliveryDateTime,
                                weight: load.weight,
                                loadType: load.typeOfFreight,
                                price: load.rateOffered,
                                pickupLocation: load.pickupLocation,
                                deliveryLocation: load.deliveryLocation,
                                onTapPlaceBid: widget.onTapPlaceBid,
                                onTapViewDetails: () {},
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Featured Loads',
                                  style: AppTextStyles.bebasStyle.copyWith(
                                    color: const Color(0xFF333333),
                                    fontSize: 48.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.58,
                                  )),
                              Text(
                                  'Check out the top loads that are receiving the most attention. Act fast and secure these opportunities.',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF8E8E93),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.primaryColor,
                          ),
                          const CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            radius: 15,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: List.generate(
                      //     4,
                      //     (index) => Expanded(
                      //       child: Padding(
                      //         padding: EdgeInsets.only(right: 10.w),
                      //         child: LoadBoardContainer(
                      //           onTapPlaceBid: () {},
                      //           isFeatured: true,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Your Bidding History',
                                  style: AppTextStyles.bebasStyle.copyWith(
                                    color: const Color(0xFF333333),
                                    fontSize: 48.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.58,
                                  )),
                              Text('Keep track of your recent bids and monitor the status of each load.',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF8E8E93),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                          const Spacer(),
                          Text('Approved',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w700,
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Color(0xff828282),
                          )
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        decoration: ShapeDecoration(
                          color: const Color(0x4CE4E4E4),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                      padding: EdgeInsets.all(8.w), // Responsive padding for table cells
                                      child: Center(
                                          child: Text(tableColumnData[index],
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF8E8E93),
                                                fontSize: 24.sp,
                                                fontWeight: FontWeight.w700,
                                              ))),
                                    );
                                  }),
                                ),
                                ...tableData.map((data) {
                                  return TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
                                        child: Center(
                                            child: Text(
                                          data.load,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                              color: const Color(0xFF262626), fontSize: 24.sp, fontWeight: FontWeight.w700),
                                        )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
                                        child: Center(
                                            child: Text(
                                          data.bidAmount,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF262626),
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
                                        child: Center(
                                            child: Text(
                                          data.status,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: data.status == 'Rejected'
                                                ? AppColors.primaryColor
                                                : data.status == 'Approved'
                                                    ? const Color(0xFF0A9E22)
                                                    : data.status == 'Cancelled'
                                                        ? const Color(0xFF606176)
                                                        : const Color(0xFFF2994A),
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
                                        child: Center(
                                            child: Text(
                                          data.date,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF262626),
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
                                        child: Center(
                                            child: Text(
                                          data.cancelBid,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF606176),
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
                                        child: Center(
                                          child: Text(
                                            data.viewBid,
                                            style: AppTextStyles.mulishStyle.copyWith(
                                              color: const Color(0xFF262626),
                                              fontSize: 24.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
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
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
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
                      Text('Track Your Loads',
                          style: AppTextStyles.bebasStyle.copyWith(
                            color: const Color(0xFF333333),
                            fontSize: 48.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.58,
                          )),
                      Text('View real-time updates on loads you\'ve secured. Stay informed from pickup to delivery.',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF8E8E93),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(
                              4,
                              (index) => const Expanded(
                                  child: ReportIssueContainer(
                                      title: 'Flatbed Load - 20 Tons',
                                      status: 'In Transit',
                                      deliverDate: "2-10-24",
                                      link: 'Open Link'))))
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                CustomFooter(),
              ],
            )
          : CreateALoad(),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:intl/intl.dart';
// import '../../../themes/app_colors.dart';
// import '../../../themes/app_text_styles.dart';
// import '../../../widget/custom_footer.dart';
// import '../../../app_list/app_list.dart';
// import '../../../screen/website_screen/loadboards_overview/create_a_load.dart';
//
// class LoadboardsOverview extends StatefulWidget {
//   final VoidCallback onTapPlaceBid;
//   const LoadboardsOverview({super.key, required this.onTapPlaceBid});
//
//   @override
//   State<LoadboardsOverview> createState() => _LoadboardsOverviewState();
// }
//
// class _LoadboardsOverviewState extends State<LoadboardsOverview> {
//   bool isCreateLoad = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(15.w),
//       child: isCreateLoad
//           ? const CreateALoad()
//           : Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // … your existing top banner and search bar untouched …
//
//                 // **Dynamic grid from Firestore**
//                 StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
//                   stream: FirebaseFirestore.instance.collection('loads').snapshots(),
//                   builder: (ctx, snap) {
//                     if (snap.hasError) {
//                       return Center(child: Text('Error: ${snap.error}'));
//                     }
//                     if (!snap.hasData) {
//                       return const Center(child: CircularProgressIndicator());
//                     }
//                     final loads = snap.data!.docs.map((doc) => LoadModel.fromDoc(doc)).toList();
//
//                     return GridView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: loads.length,
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 4,
//                         crossAxisSpacing: 10.w,
//                         mainAxisSpacing: 10.h,
//                         childAspectRatio: 0.75,
//                       ),
//                       itemBuilder: (_, idx) {
//                         final load = loads[idx];
//                         return LoadBoardContainer(
//                           title: load.title,
//                           description: load.commodityDetails,
//                           pickupDateTime: load.pickupDateTime,
//                           deliveryDateTime: load.deliveryDateTime,
//                           weight: load.weight,
//                           loadType: load.typeOfFreight,
//                           price: load.rateOffered,
//                           pickupLocation: load.pickupLocation,
//                           deliveryLocation: load.deliveryLocation,
//                           onTapPlaceBid: widget.onTapPlaceBid,
//                         );
//                       },
//                     );
//                   },
//                 ),
//
//                 const SizedBox(height: 30),
//                 CustomFooter(),
//               ],
//             ),
//     );
//   }
// }
//

class LoadBoardContainer extends StatelessWidget {
  final String title;
  final String description;
  final DateTime pickupDateTime;
  final DateTime deliveryDateTime;
  final String pickupLocation;
  final String deliveryLocation;
  final String weight;
  final String loadType;
  final String price;
  final VoidCallback onTapPlaceBid;
  final VoidCallback onTapViewDetails;

  const LoadBoardContainer({
    Key? key,
    required this.title,
    required this.description,
    required this.pickupDateTime,
    required this.deliveryDateTime,
    required this.pickupLocation,
    required this.deliveryLocation,
    required this.weight,
    required this.loadType,
    required this.price,
    required this.onTapPlaceBid,
    required this.onTapViewDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat.yMMMMd();
    final timeFormatter = DateFormat.jm();
    final shortDate = DateFormat('dd-MM-yyyy');

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(8.r),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            title,
            style: AppTextStyles.bebasStyle.copyWith(
              fontSize: 20.sp,
            ),
          ),
          SizedBox(height: 8.h),

          // Description
          Text(
            description,
            style: AppTextStyles.mulishStyle.copyWith(
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 12.h),

          // Date & Time Row
          Row(
            children: [
              const Icon(Icons.calendar_today, color: AppColors.primaryColor),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  '${dateFormatter.format(pickupDateTime)} | '
                  '${timeFormatter.format(pickupDateTime)} - '
                  '${timeFormatter.format(deliveryDateTime)}',
                  style: AppTextStyles.mulishStyle.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),

          // Pickup Location
          Row(
            children: [
              const Icon(Icons.north_east, color: AppColors.primaryColor),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  pickupLocation,
                  style: AppTextStyles.mulishStyle.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),

          // Delivery Location
          Row(
            children: [
              const Icon(Icons.south_west, color: AppColors.primaryColor),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  deliveryLocation,
                  style: AppTextStyles.mulishStyle.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),

          const Divider(color: Color(0xFFCCCCCC)),
          SizedBox(height: 8.h),

          // Tags Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Tag(label: shortDate.format(pickupDateTime)),
              _Tag(label: shortDate.format(deliveryDateTime)),
              _Tag(label: weight),
              _Tag(label: loadType),
              _Tag(label: price),
            ],
          ),
          SizedBox(height: 12.h),

          // Buttons Row
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onTapViewDetails,
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.primaryColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  child: Text(
                    'View Details',
                    style: AppTextStyles.mulishStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: ElevatedButton(
                  onPressed: onTapPlaceBid,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  child: Text(
                    'Place Bid',
                    style: AppTextStyles.mulishStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String label;
  const _Tag({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(label, style: AppTextStyles.mulishStyle.copyWith(fontSize: 12)),
    );
  }
}

class LoadModel {
  final String id;
  final String title;
  final String commodityDetails;
  final DateTime pickupDateTime;
  final DateTime deliveryDateTime;
  final String weight;
  final String typeOfFreight;
  final String rateOffered;
  final String pickupLocation;
  final String deliveryLocation;

  LoadModel({
    required this.id,
    required this.title,
    required this.commodityDetails,
    required this.pickupDateTime,
    required this.deliveryDateTime,
    required this.weight,
    required this.typeOfFreight,
    required this.rateOffered,
    required this.pickupLocation,
    required this.deliveryLocation,
  });

  factory LoadModel.fromDoc(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    return LoadModel(
      id: doc.id,
      title: data['title'] as String? ?? '',
      commodityDetails: data['commodityDetails'] as String? ?? '',
      pickupDateTime: (data['pickupDateTime'] as Timestamp).toDate(),
      deliveryDateTime: (data['deliveryDateTime'] as Timestamp).toDate(),
      weight: data['weight']?.toString() ?? '',
      typeOfFreight: data['typeOfFreight'] as String? ?? '',
      rateOffered: data['rateOffered'] as String? ?? '',
      pickupLocation: '${data['pickupLocation'] as String? ?? ''}, ${data['pickupState'] as String? ?? ''}',
      deliveryLocation: '${data['deliveryLocation'] as String? ?? ''}, ${data['deliveryState'] as String? ?? ''}',
    );
  }
}
