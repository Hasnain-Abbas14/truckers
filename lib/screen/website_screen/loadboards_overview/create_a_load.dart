// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../themes/app_colors.dart';
// import '../../../themes/app_text_styles.dart';
// import '../../../widget/custom_button.dart';
// import '../../../widget/custom_footer.dart';
//
// class CreateALoad extends StatefulWidget {
//   const CreateALoad({super.key});
//
//   @override
//   State<CreateALoad> createState() => _CreateALoadState();
// }
//
// class _CreateALoadState extends State<CreateALoad> {
//   bool isChecked = false;
//   bool isCheckedOne = false;
//   InputDecoration customInputDecoration({
//     required String hintText,
//     Widget? suffixIcon,
//   }) {
//     return InputDecoration(
//       hintText: hintText,
//       hintStyle: AppTextStyles.mulishStyle.copyWith(
//         color: const Color(0xFF262626),
//         fontSize: 26.sp,
//         fontWeight: FontWeight.w400,
//       ),
//       suffixIcon: suffixIcon,
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.r),
//         borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
//       ),
//       disabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.r),
//         borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.r),
//         borderSide: const BorderSide(color: AppColors.primaryColor),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.r),
//         borderSide: const BorderSide(color: AppColors.redColor),
//       ),
//       contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Container(
//           padding: EdgeInsets.all(15.w),
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30.r),
//             ),
//             shadows: [
//               const BoxShadow(
//                 color: Color(0x3F989898),
//                 blurRadius: 15,
//                 offset: Offset(0, 4),
//                 spreadRadius: 4,
//               )
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text('Create Load',
//                   style: AppTextStyles.bebasStyle.copyWith(
//                     color: const Color(0xFF333333),
//                     fontSize: 48,
//                     fontWeight: FontWeight.w400,
//                     letterSpacing: -0.58,
//                   )),
//               SizedBox(
//                 height: 15.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Load Title',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Title",
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Text('Pickup Location',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Pickup Location",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Type of Freight',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text('Flatbed',
//                                   style: AppTextStyles.mulishStyle.copyWith(
//                                     color: const Color(0xFF262626),
//                                     fontSize: 26.sp,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                               const Spacer(),
//                               PopupMenuButton(
//                                 color: AppColors.primaryWhite,
//                                 splashRadius: 14.r,
//                                 onOpened: () {},
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
//                                 itemBuilder: (context) {
//                                   return [
//                                     PopupMenuItem(
//                                       height: 13.h,
//                                       onTap: () {},
//                                       child: Text(
//                                         '',
//                                         style: AppTextStyles.poppinsStyle.copyWith(
//                                           color: const Color(0xFF828282),
//                                           fontSize: 18.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ];
//                                 },
//                                 offset: const Offset(0, 30),
//                                 surfaceTintColor: AppColors.primaryWhite,
//                                 icon: const Icon(
//                                   Icons.keyboard_arrow_down_rounded,
//                                   color: AppColors.text33,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Text('Pickup Date and Time',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                             decoration: customInputDecoration(
//                           hintText: "Select Date and Time",
//                           suffixIcon: const Icon(
//                             Icons.calendar_month,
//                             color: Color(0xff101010),
//                           ),
//                         )),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('City',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                             decoration: customInputDecoration(
//                           hintText: "Enter City",
//                         )),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('State',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                             decoration: customInputDecoration(
//                           hintText: "Enter State",
//                         )),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Zip Code',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Zip Code",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Delivery Location',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Delivery Location",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Delivery Date and Time',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Select Date and Time",
//                             suffixIcon: const Icon(
//                               Icons.calendar_month,
//                               color: Color(0xff101010),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('City',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter City",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('State',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter State",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Zip Code',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Zip Code",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Load Weight',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Load Weight",
//                             suffixIcon: Container(
//                               width: 103.w,
//                               height: 55.h,
//                               margin: EdgeInsets.only(right: 9.w),
//                               decoration: ShapeDecoration(
//                                 color: const Color(0xFFFFB8B8),
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
//                               ),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text('kg',
//                                       style: AppTextStyles.mulishStyle.copyWith(
//                                         color: const Color(0xFF262626),
//                                         fontSize: 24.sp,
//                                         fontWeight: FontWeight.w400,
//                                       )),
//                                   SizedBox(
//                                     width: 6.w,
//                                   ),
//                                   const Icon(
//                                     Icons.keyboard_arrow_down_rounded,
//                                     color: Color(0xff101010),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Text('Height ',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Height ",
//                             suffixIcon: Container(
//                               width: 103.w,
//                               height: 55.h,
//                               margin: EdgeInsets.only(right: 9.w),
//                               decoration: ShapeDecoration(
//                                 color: const Color(0xFFFFB8B8),
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
//                               ),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text('feet',
//                                       style: AppTextStyles.mulishStyle.copyWith(
//                                         color: const Color(0xFF262626),
//                                         fontSize: 24.sp,
//                                         fontWeight: FontWeight.w400,
//                                       )),
//                                   SizedBox(
//                                     width: 6.w,
//                                   ),
//                                   const Icon(
//                                     Icons.keyboard_arrow_down_rounded,
//                                     color: Color(0xff101010),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Length',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Length",
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         Text('Width',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Width",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Text('Commodity Details',
//                   style: AppTextStyles.mulishStyle.copyWith(
//                     color: const Color(0xFF828282),
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.w400,
//                   )),
//               SizedBox(
//                 height: 5.h,
//               ),
//               TextFormField(
//                 maxLines: 6,
//                 decoration: customInputDecoration(
//                   hintText: 'Description of the goods being transported',
//                 ),
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Rate Offered',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text('Fixed Price',
//                                   style: AppTextStyles.mulishStyle.copyWith(
//                                     color: const Color(0xFF262626),
//                                     fontSize: 26.sp,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                               const Spacer(),
//                               PopupMenuButton(
//                                 color: AppColors.primaryWhite,
//                                 splashRadius: 14.r,
//                                 onOpened: () {},
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
//                                 itemBuilder: (context) {
//                                   return [
//                                     PopupMenuItem(
//                                       height: 13.h,
//                                       onTap: () {},
//                                       child: Text(
//                                         '',
//                                         style: AppTextStyles.poppinsStyle.copyWith(
//                                           color: const Color(0xFF828282),
//                                           fontSize: 18.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ];
//                                 },
//                                 offset: const Offset(0, 30),
//                                 surfaceTintColor: AppColors.primaryWhite,
//                                 icon: const Icon(
//                                   Icons.keyboard_arrow_down_rounded,
//                                   color: AppColors.text33,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Text('Equipment Type Needed',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text('Select',
//                                   style: AppTextStyles.mulishStyle.copyWith(
//                                     color: const Color(0xFF262626),
//                                     fontSize: 26.sp,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                               const Spacer(),
//                               PopupMenuButton(
//                                 color: AppColors.primaryWhite,
//                                 splashRadius: 14.r,
//                                 onOpened: () {},
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
//                                 itemBuilder: (context) {
//                                   return [
//                                     PopupMenuItem(
//                                       height: 13.h,
//                                       onTap: () {},
//                                       child: Text(
//                                         '',
//                                         style: AppTextStyles.poppinsStyle.copyWith(
//                                           color: const Color(0xFF828282),
//                                           fontSize: 18.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ];
//                                 },
//                                 offset: const Offset(0, 30),
//                                 surfaceTintColor: AppColors.primaryWhite,
//                                 icon: const Icon(
//                                   Icons.keyboard_arrow_down_rounded,
//                                   color: AppColors.text33,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Payment Terms',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text('Immediate',
//                                   style: AppTextStyles.mulishStyle.copyWith(
//                                     color: const Color(0xFF262626),
//                                     fontSize: 26.sp,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                               const Spacer(),
//                               PopupMenuButton(
//                                 color: AppColors.primaryWhite,
//                                 splashRadius: 14.r,
//                                 onOpened: () {},
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
//                                 itemBuilder: (context) {
//                                   return [
//                                     PopupMenuItem(
//                                       height: 13.h,
//                                       onTap: () {},
//                                       child: Text(
//                                         '',
//                                         style: AppTextStyles.poppinsStyle.copyWith(
//                                           color: const Color(0xFF828282),
//                                           fontSize: 18.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ];
//                                 },
//                                 offset: const Offset(0, 30),
//                                 surfaceTintColor: AppColors.primaryWhite,
//                                 icon: const Icon(
//                                   Icons.keyboard_arrow_down_rounded,
//                                   color: AppColors.text33,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Text('Is the load hazardous material?',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text('Yes',
//                                   style: AppTextStyles.mulishStyle.copyWith(
//                                     color: const Color(0xFF262626),
//                                     fontSize: 26.sp,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                               const Spacer(),
//                               PopupMenuButton(
//                                 color: AppColors.primaryWhite,
//                                 splashRadius: 14.r,
//                                 onOpened: () {},
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
//                                 itemBuilder: (context) {
//                                   return [
//                                     PopupMenuItem(
//                                       height: 13.h,
//                                       onTap: () {},
//                                       child: Text(
//                                         '',
//                                         style: AppTextStyles.poppinsStyle.copyWith(
//                                           color: const Color(0xFF828282),
//                                           fontSize: 18.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ];
//                                 },
//                                 offset: const Offset(0, 30),
//                                 surfaceTintColor: AppColors.primaryWhite,
//                                 icon: const Icon(
//                                   Icons.keyboard_arrow_down_rounded,
//                                   color: AppColors.text33,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Text('Additional Notes',
//                   style: AppTextStyles.mulishStyle.copyWith(
//                     color: const Color(0xFF828282),
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.w400,
//                   )),
//               SizedBox(
//                 height: 5.h,
//               ),
//               TextFormField(
//                 maxLines: 6,
//                 decoration: customInputDecoration(
//                   hintText: 'Additional Notes',
//                 ),
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Contact Person Name',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Name",
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Text('Email Address',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Email Address",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Contact Phone Number',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Enter Contact Phone Number",
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         Text('Who Can Bid',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text('Public',
//                                   style: AppTextStyles.mulishStyle.copyWith(
//                                     color: const Color(0xFF262626),
//                                     fontSize: 26.sp,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                               const Spacer(),
//                               PopupMenuButton(
//                                 color: AppColors.primaryWhite,
//                                 splashRadius: 14.r,
//                                 onOpened: () {},
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
//                                 itemBuilder: (context) {
//                                   return [
//                                     PopupMenuItem(
//                                       height: 13.h,
//                                       onTap: () {},
//                                       child: Text(
//                                         '',
//                                         style: AppTextStyles.poppinsStyle.copyWith(
//                                           color: const Color(0xFF828282),
//                                           fontSize: 18.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ];
//                                 },
//                                 offset: const Offset(0, 30),
//                                 surfaceTintColor: AppColors.primaryWhite,
//                                 icon: const Icon(
//                                   Icons.keyboard_arrow_down_rounded,
//                                   color: AppColors.text33,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Bid Deadline',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Select Date and Time",
//                             suffixIcon: const Icon(
//                               Icons.calendar_month,
//                               color: Color(0xff101010),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.w,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Posting Expiry Date',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Select Date and Time",
//                             suffixIcon: const Icon(
//                               Icons.calendar_month,
//                               color: Color(0xff101010),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Does the load require GPS tracking?',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text('Yes',
//                                   style: AppTextStyles.mulishStyle.copyWith(
//                                     color: const Color(0xFF262626),
//                                     fontSize: 26.sp,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                               const Spacer(),
//                               PopupMenuButton(
//                                 color: AppColors.primaryWhite,
//                                 splashRadius: 14.r,
//                                 onOpened: () {},
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
//                                 itemBuilder: (context) {
//                                   return [
//                                     PopupMenuItem(
//                                       height: 13.h,
//                                       onTap: () {},
//                                       child: Text(
//                                         '',
//                                         style: AppTextStyles.poppinsStyle.copyWith(
//                                           color: const Color(0xFF828282),
//                                           fontSize: 18.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ];
//                                 },
//                                 offset: const Offset(0, 30),
//                                 surfaceTintColor: AppColors.primaryWhite,
//                                 icon: const Icon(
//                                   Icons.keyboard_arrow_down_rounded,
//                                   color: AppColors.text33,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.w,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text('Insurance Requirements',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF828282),
//                               fontSize: 26.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 4.h,
//                         ),
//                         TextFormField(
//                           decoration: customInputDecoration(
//                             hintText: "Insurance Requirements",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Expanded(
//                       child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text('Attach File',
//                           style: AppTextStyles.mulishStyle.copyWith(
//                             color: const Color(0xFF828282),
//                             fontSize: 26.sp,
//                             fontWeight: FontWeight.w400,
//                           )),
//                       SizedBox(
//                         height: 4.h,
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//                         decoration: ShapeDecoration(
//                           color: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
//                             borderRadius: BorderRadius.circular(8.r),
//                           ),
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text('Choose',
//                                 style: AppTextStyles.mulishStyle.copyWith(
//                                   color: const Color(0xFF262626),
//                                   fontSize: 36.sp,
//                                   fontWeight: FontWeight.w400,
//                                 )),
//                             const Spacer(),
//                             Icon(
//                               Icons.attach_file_outlined,
//                               color: const Color(0xffC4C4C4),
//                               size: 30.r,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   )),
//                   const Expanded(
//                       child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [],
//                   )),
//                 ],
//               ),
//               SizedBox(
//                 height: 32.h,
//               ),
//               CustomButton(title: "Create Load", width: 556.w, onTap: () {})
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 32.h,
//         ),
//         const CustomFooter(),
//       ],
//     );
//   }
// }

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_footer.dart';

class CreateALoad extends StatefulWidget {
  const CreateALoad({super.key});

  @override
  State<CreateALoad> createState() => _CreateALoadState();
}

class _CreateALoadState extends State<CreateALoad> {
  // text controllers
  final titleController = TextEditingController();
  final pickupLocationController = TextEditingController();
  final pickupCityController = TextEditingController();
  final pickupStateController = TextEditingController();
  final pickupZipController = TextEditingController();
  final deliveryLocationController = TextEditingController();
  final deliveryCityController = TextEditingController();
  final deliveryStateController = TextEditingController();
  final deliveryZipController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final lengthController = TextEditingController();
  final widthController = TextEditingController();
  final descriptionController = TextEditingController();
  final insuranceRequirementsController = TextEditingController();
  final additionalNotesController = TextEditingController();
  final contactNameController = TextEditingController();
  final contactEmailController = TextEditingController();
  final contactPhoneController = TextEditingController();

  // date/time controllers
  DateTime? _pickupDateTime;
  final pickupDateTimeController = TextEditingController();
  DateTime? _deliveryDateTime;
  final deliveryDateTimeController = TextEditingController();
  DateTime? _bidDeadlineDateTime;
  final bidDeadlineController = TextEditingController();
  DateTime? _postingExpiryDateTime;
  final postingExpiryController = TextEditingController();

  // dropdown & unit selections
  String _selectedFreight = 'Flatbed';
  String _selectedRate = 'Fixed Price';
  String _selectedPaymentTerms = 'Immediate';
  String _selectedEquipmentType = 'Select';
  String _isHazardous = 'Yes';
  String _selectedWhoCanBid = 'Public';
  String _requiresGPS = 'Yes';
  String _weightUnit = 'kg';
  String _heightUnit = 'feet';

  // file picker
  PlatformFile? _pickedFile;

  @override
  void dispose() {
    titleController.dispose();
    pickupLocationController.dispose();
    pickupCityController.dispose();
    pickupStateController.dispose();
    pickupZipController.dispose();
    deliveryLocationController.dispose();
    deliveryCityController.dispose();
    deliveryStateController.dispose();
    deliveryZipController.dispose();
    weightController.dispose();
    heightController.dispose();
    lengthController.dispose();
    widthController.dispose();
    descriptionController.dispose();
    insuranceRequirementsController.dispose();
    additionalNotesController.dispose();
    contactNameController.dispose();
    contactEmailController.dispose();
    contactPhoneController.dispose();
    pickupDateTimeController.dispose();
    deliveryDateTimeController.dispose();
    bidDeadlineController.dispose();
    postingExpiryController.dispose();
    super.dispose();
  }

  InputDecoration customInputDecoration({
    required String hintText,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.mulishStyle.copyWith(
        color: const Color(0xFF262626),
        fontSize: 26.sp,
        fontWeight: FontWeight.w400,
      ),
      suffixIcon: suffixIcon,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.redColor),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
    );
  }

  Future<void> _pickDateTime({
    required TextEditingController controller,
    required void Function(DateTime) onPicked,
  }) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (date == null) return;
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time == null) return;
    final dt = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
    controller.text = DateFormat('yyyy-MM-dd HH:mm').format(dt);
    onPicked(dt);
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.isNotEmpty) {
      setState(() => _pickedFile = result.files.first);
    }
  }

  Future<void> _saveLoad() async {
    final data = {
      'title': titleController.text,
      'typeOfFreight': _selectedFreight,
      'pickupLocation': pickupLocationController.text,
      'pickupDateTime': _pickupDateTime,
      'pickupCity': pickupCityController.text,
      'pickupState': pickupStateController.text,
      'pickupZip': pickupZipController.text,
      'deliveryLocation': deliveryLocationController.text,
      'deliveryDateTime': _deliveryDateTime,
      'deliveryCity': deliveryCityController.text,
      'deliveryState': deliveryStateController.text,
      'deliveryZip': deliveryZipController.text,
      'loadWeight': weightController.text,
      'weightUnit': _weightUnit,
      'height': heightController.text,
      'heightUnit': _heightUnit,
      'length': lengthController.text,
      'width': widthController.text,
      'commodityDetails': descriptionController.text,
      'rateOffered': _selectedRate,
      'paymentTerms': _selectedPaymentTerms,
      'equipmentType': _selectedEquipmentType,
      'isHazardous': _isHazardous,
      'additionalNotes': additionalNotesController.text,
      'contactName': contactNameController.text,
      'contactEmail': contactEmailController.text,
      'contactPhone': contactPhoneController.text,
      'whoCanBid': _selectedWhoCanBid,
      'bidDeadline': _bidDeadlineDateTime,
      'postingExpiry': _postingExpiryDateTime,
      'requiresGPS': _requiresGPS,
      'insuranceRequirements': insuranceRequirementsController.text,
      'attachedFileName': _pickedFile?.name,
      'createdAt': FieldValue.serverTimestamp(),
    };
    await FirebaseFirestore.instance.collection('loads').add(data);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Load created successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15.w),
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
              children: [
                Text('Create Load',
                    style: AppTextStyles.bebasStyle.copyWith(
                      color: const Color(0xFF333333),
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.58,
                    )),
                SizedBox(height: 15.h),

                // first row: title + freight
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Load Title',
                        child: TextFormField(
                          controller: titleController,
                          decoration: customInputDecoration(hintText: 'Title'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Type of Freight',
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(_selectedFreight,
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 26.sp,
                                  )),
                              const Spacer(),
                              PopupMenuButton<String>(
                                onSelected: (v) => setState(() => _selectedFreight = v),
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColors.text33,
                                ),
                                itemBuilder: (_) => [
                                  'Flatbed',
                                  'Dry Van',
                                  'Reefer',
                                ]
                                    .map((e) => PopupMenuItem(
                                          value: e,
                                          child: Text(e,
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                fontSize: 18.sp,
                                                color: const Color(0xFF828282),
                                              )),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                // second row: pickup location + pickup date/time
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Pickup Location',
                        child: TextFormField(
                          controller: pickupLocationController,
                          decoration: customInputDecoration(
                            hintText: 'Enter Pickup Location',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Pickup Date and Time',
                        child: TextFormField(
                          controller: pickupDateTimeController,
                          readOnly: true,
                          decoration: customInputDecoration(
                            hintText: 'Select Date and Time',
                            suffixIcon: const Icon(
                              Icons.calendar_month,
                              color: Color(0xff101010),
                            ),
                          ),
                          onTap: () => _pickDateTime(
                            controller: pickupDateTimeController,
                            onPicked: (dt) => _pickupDateTime = dt,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                // third row: pickup city/state/zip
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'City',
                        child: TextFormField(
                          controller: pickupCityController,
                          decoration: customInputDecoration(hintText: 'Enter City'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'State',
                        child: TextFormField(
                          controller: pickupStateController,
                          decoration: customInputDecoration(hintText: 'Enter State'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Zip Code',
                        child: TextFormField(
                          controller: pickupZipController,
                          decoration: customInputDecoration(hintText: 'Enter Zip Code'),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                // delivery row 1
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Delivery Location',
                        child: TextFormField(
                          controller: deliveryLocationController,
                          decoration: customInputDecoration(
                            hintText: 'Enter Delivery Location',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Delivery Date and Time',
                        child: TextFormField(
                          controller: deliveryDateTimeController,
                          readOnly: true,
                          decoration: customInputDecoration(
                            hintText: 'Select Date and Time',
                            suffixIcon: const Icon(
                              Icons.calendar_month,
                              color: Color(0xff101010),
                            ),
                          ),
                          onTap: () => _pickDateTime(
                            controller: deliveryDateTimeController,
                            onPicked: (dt) => _deliveryDateTime = dt,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                // delivery row 2
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'City',
                        child: TextFormField(
                          controller: deliveryCityController,
                          decoration: customInputDecoration(hintText: 'Enter City'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'State',
                        child: TextFormField(
                          controller: deliveryStateController,
                          decoration: customInputDecoration(hintText: 'Enter State'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Zip Code',
                        child: TextFormField(
                          controller: deliveryZipController,
                          decoration: customInputDecoration(hintText: 'Enter Zip Code'),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                // weight/height/length/width
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Load Weight',
                        child: TextFormField(
                          controller: weightController,
                          decoration: customInputDecoration(
                            hintText: 'Enter Load Weight',
                            suffixIcon: PopupMenuButton<String>(
                              onSelected: (v) => setState(() => _weightUnit = v),
                              itemBuilder: (_) => ['kg', 'lb']
                                  .map((u) => PopupMenuItem(
                                        value: u,
                                        child: Text(u),
                                      ))
                                  .toList(),
                              child: Container(
                                width: 103.w,
                                height: 55.h,
                                margin: EdgeInsets.only(right: 9.w),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFFB8B8),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(_weightUnit, style: AppTextStyles.mulishStyle.copyWith(fontSize: 24.sp)),
                                    SizedBox(width: 6.w),
                                    const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xff101010),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Height',
                        child: TextFormField(
                          controller: heightController,
                          decoration: customInputDecoration(
                            hintText: 'Enter Height',
                            suffixIcon: PopupMenuButton<String>(
                              onSelected: (v) => setState(() => _heightUnit = v),
                              itemBuilder: (_) => ['feet', 'meters']
                                  .map((u) => PopupMenuItem(
                                        value: u,
                                        child: Text(u),
                                      ))
                                  .toList(),
                              child: Container(
                                width: 103.w,
                                height: 55.h,
                                margin: EdgeInsets.only(right: 9.w),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFFB8B8),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(_heightUnit, style: AppTextStyles.mulishStyle.copyWith(fontSize: 24.sp)),
                                    SizedBox(width: 6.w),
                                    const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xff101010),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Length',
                        child: TextFormField(
                          controller: lengthController,
                          decoration: customInputDecoration(hintText: 'Enter Length'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Width',
                        child: TextFormField(
                          controller: widthController,
                          decoration: customInputDecoration(hintText: 'Enter Width'),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                Text('Commodity Details',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                    )),
                SizedBox(height: 5.h),
                TextFormField(
                  controller: descriptionController,
                  maxLines: 6,
                  decoration: customInputDecoration(
                    hintText: 'Description of the goods being transported',
                  ),
                ),

                SizedBox(height: 30.h),

                // rate / payment / equipment / hazardous
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Rate Offered',
                        child: _buildDropdownField(
                          value: _selectedRate,
                          items: ['Fixed Price', 'Per Mile', 'Negotiable'],
                          onChanged: (v) => setState(() => _selectedRate = v!),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Payment Terms',
                        child: _buildDropdownField(
                          value: _selectedPaymentTerms,
                          items: ['Immediate', 'Net 30', 'Net 60'],
                          onChanged: (v) => setState(() => _selectedPaymentTerms = v!),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Equipment Type Needed',
                        child: _buildDropdownField(
                          value: _selectedEquipmentType,
                          items: ['Select', 'Forklift', 'Crane', 'None'],
                          onChanged: (v) => setState(() => _selectedEquipmentType = v!),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Is the load hazardous material?',
                        child: _buildDropdownField(
                          value: _isHazardous,
                          items: ['Yes', 'No'],
                          onChanged: (v) => setState(() => _isHazardous = v!),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                Text('Additional Notes',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                    )),
                SizedBox(height: 5.h),
                TextFormField(
                  controller: additionalNotesController,
                  maxLines: 6,
                  decoration: customInputDecoration(hintText: 'Additional Notes'),
                ),

                SizedBox(height: 30.h),

                // contact / who can bid
                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Contact Person Name',
                        child: TextFormField(
                          controller: contactNameController,
                          decoration: customInputDecoration(hintText: 'Enter Name'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Contact Phone Number',
                        child: TextFormField(
                          controller: contactPhoneController,
                          decoration: customInputDecoration(hintText: 'Enter Contact Phone Number'),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Email Address',
                        child: TextFormField(
                          controller: contactEmailController,
                          decoration: customInputDecoration(hintText: 'Enter Email Address'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Who Can Bid',
                        child: _buildDropdownField(
                          value: _selectedWhoCanBid,
                          items: ['Public', 'Private'],
                          onChanged: (v) => setState(() => _selectedWhoCanBid = v!),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Bid Deadline',
                        child: TextFormField(
                          controller: bidDeadlineController,
                          readOnly: true,
                          decoration: customInputDecoration(
                            hintText: 'Select Date and Time',
                            suffixIcon: const Icon(
                              Icons.calendar_month,
                              color: Color(0xff101010),
                            ),
                          ),
                          onTap: () => _pickDateTime(
                            controller: bidDeadlineController,
                            onPicked: (dt) => _bidDeadlineDateTime = dt,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Posting Expiry Date',
                        child: TextFormField(
                          controller: postingExpiryController,
                          readOnly: true,
                          decoration: customInputDecoration(
                            hintText: 'Select Date and Time',
                            suffixIcon: const Icon(
                              Icons.calendar_month,
                              color: Color(0xff101010),
                            ),
                          ),
                          onTap: () => _pickDateTime(
                            controller: postingExpiryController,
                            onPicked: (dt) => _postingExpiryDateTime = dt,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                Row(
                  children: [
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Does the load require GPS tracking?',
                        child: _buildDropdownField(
                          value: _requiresGPS,
                          items: ['Yes', 'No'],
                          onChanged: (v) => setState(() => _requiresGPS = v!),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _buildLabeledField(
                        label: 'Insurance Requirements',
                        child: TextFormField(
                          controller: insuranceRequirementsController,
                          decoration: customInputDecoration(hintText: 'Insurance Requirements'),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                // file picker
                _buildLabeledField(
                  label: 'Attach File',
                  child: InkWell(
                    onTap: _pickFile,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              _pickedFile?.name ?? 'Choose',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF262626),
                                fontSize: 36.sp,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.attach_file_outlined,
                            color: const Color(0xffC4C4C4),
                            size: 30.r,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 32.h),

                CustomButton(
                  title: "Create Load",
                  width: 556.w,
                  onTap: _saveLoad,
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          const CustomFooter(),
        ],
      ),
    );
  }

  Widget _buildLabeledField({
    required String label,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: AppTextStyles.mulishStyle.copyWith(
              color: const Color(0xFF828282),
              fontSize: 26.sp,
              fontWeight: FontWeight.w400,
            )),
        SizedBox(height: 4.h),
        child,
      ],
    );
  }

  Widget _buildDropdownField({
    required String value,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Row(
        children: [
          Text(value,
              style: AppTextStyles.mulishStyle.copyWith(
                color: const Color(0xFF262626),
                fontSize: 26.sp,
              )),
          const Spacer(),
          PopupMenuButton<String>(
            onSelected: onChanged,
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.text33,
            ),
            itemBuilder: (_) => items
                .map((e) => PopupMenuItem(
                      value: e,
                      child: Text(e,
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 18.sp,
                          )),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
