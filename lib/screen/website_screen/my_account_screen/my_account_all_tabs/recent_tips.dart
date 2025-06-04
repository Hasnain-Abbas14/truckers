// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:truckerbs_website/themes/app_colors.dart';
// import 'package:truckerbs_website/themes/app_text_styles.dart';
// import 'package:truckerbs_website/widget/custom_button.dart';
//
// import '../../../../widget/custom_footer.dart';
// import '../../../../widget/custom_rich_text.dart';
// import '../../../../widget/overview_container.dart';
// import '../../../../widget/reusable_text_form.dart';
//
// class RecentTips extends StatefulWidget {
//   const RecentTips({super.key});
//
//   @override
//   State<RecentTips> createState() => _RecentTipsState();
// }
//
// class _RecentTipsState extends State<RecentTips> {
//   bool _isAdd = false;
//   bool _isTips = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: 30.h,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             _isAdd == false && _isTips == false
//                 ? Center(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: 20.h,
//                         ),
//                         Text('No Trips Yet',
//                             style: AppTextStyles.mulishStyle.copyWith(
//                               color: const Color(0xFF8E8E93),
//                               fontSize: 96.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(
//                           height: 20.h,
//                         ),
//                       ],
//                     ),
//                   )
//                 : _isAdd == true && _isTips == false
//                     ? Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('Add Trip',
//                                   textAlign: TextAlign.center,
//                                   style: AppTextStyles.bebasStyle.copyWith(
//                                     color: const Color(0xFF333333),
//                                     fontSize: 96.sp,
//                                     fontWeight: FontWeight.w400,
//                                     letterSpacing: -0.58,
//                                   )),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Text('Video / Photo File',
//                                       style: AppTextStyles.mulishStyle.copyWith(
//                                         color: const Color(0xFF828282),
//                                         fontSize: 24.sp,
//                                         fontWeight: FontWeight.w400,
//                                       )),
//                                   SizedBox(
//                                     height: 10.h,
//                                   ),
//                                   Container(
//                                     width: 396.05.w,
//                                     height: 80.h,
//                                     decoration: ShapeDecoration(
//                                       color: const Color(0x19FF0000),
//                                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         const Icon(
//                                           Icons.attach_file_outlined,
//                                           color: Color(0xFF262626),
//                                         ),
//                                         SizedBox(
//                                           width: 10.w,
//                                         ),
//                                         Text('Upload File',
//                                             textAlign: TextAlign.center,
//                                             style: AppTextStyles.mulishStyle.copyWith(
//                                               color: const Color(0xFF262626),
//                                               fontSize: 32.sp,
//                                               fontWeight: FontWeight.w700,
//                                               letterSpacing: -0.32,
//                                             ))
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 30.h,
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text('Route',
//                                         style: AppTextStyles.nunito.copyWith(
//                                           color: const Color(0xFF030229),
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                         )),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     const ReusableTextForm(
//                                       hintText: 'Enter Route',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10.w,
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text('Load Types Transported',
//                                         style: AppTextStyles.nunito.copyWith(
//                                           color: const Color(0xFF030229),
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                         )),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     Container(
//                                       padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
//                                       decoration: ShapeDecoration(
//                                         color: Colors.white,
//                                         shape: RoundedRectangleBorder(
//                                           side: const BorderSide(width: 1, color: AppColors.hintColor),
//                                           borderRadius: BorderRadius.circular(8.r),
//                                         ),
//                                       ),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.min,
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Text('Select Load Types',
//                                               style: AppTextStyles.mulishStyle.copyWith(
//                                                 color: const Color(0xFFC4C4C4),
//                                                 fontSize: 20.sp,
//                                                 fontWeight: FontWeight.w400,
//                                               )),
//                                           const Spacer(),
//                                           const Icon(
//                                             Icons.keyboard_arrow_down,
//                                             color: Color(0xff333333),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10.h,
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text('Starting Date',
//                                         style: AppTextStyles.nunito.copyWith(
//                                           color: const Color(0xFF030229),
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                         )),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     const ReusableTextForm(
//                                       hintText: 'Select Starting Date',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10.w,
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text('Ending Date',
//                                         style: AppTextStyles.nunito.copyWith(
//                                           color: const Color(0xFF030229),
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                         )),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     const ReusableTextForm(
//                                       hintText: 'Select Ending Date',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10.h,
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text('Starting Point',
//                                         style: AppTextStyles.nunito.copyWith(
//                                           color: const Color(0xFF030229),
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                         )),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     const ReusableTextForm(
//                                       hintText: 'Select Starting Point',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10.w,
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text('Destination',
//                                         style: AppTextStyles.nunito.copyWith(
//                                           color: const Color(0xFF030229),
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                         )),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     const ReusableTextForm(
//                                       hintText: 'Select Destination',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20.h,
//                           ),
//                           CustomButton(
//                               title: "Save Trip",
//                               width: 396.w,
//                               onTap: () {
//                                 setState(() {
//                                   _isTips = true;
//                                 });
//                               })
//                         ],
//                       )
//                     : Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 20.h,
//                           ),
//                           Image.asset(
//                               width: MediaQuery.sizeOf(context).width * 1.w,
//                               height: MediaQuery.sizeOf(context).height * 0.50.h,
//                               fit: BoxFit.fill,
//                               "assets/image/auth/Group 1000006757.png"),
//                           SizedBox(
//                             height: 20.h,
//                           ),
//                           OverviewContainer(
//                             mainTitle: 'Recent Route: Houston, TX to Denver, CO',
//                             requiredWidgets: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 CustomRichText(
//                                   title: 'Dates:',
//                                   subTitle: 'August 1 - August 4, 2024',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/calendar-alt-svgrepo-com (1) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Starting Point:',
//                                   subTitle: 'Houston, TX',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/backward-start-circle-line-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Destination:',
//                                   subTitle: 'Denver, CO',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/route-destination-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Load Types Transported:',
//                                   subTitle: 'Refrigerated Goods, Machinery Parts',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/load-circle-svgrepo-com (2) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             isImage: true,
//                             isImagesRequired: Image.asset(
//                                 fit: BoxFit.fill,
//                                 height: MediaQuery.sizeOf(context).height * 0.34.h,
//                                 width: MediaQuery.sizeOf(context).width * 0.15.w,
//                                 "assets/image/auth/Rectangle 1615.png"),
//                           ),
//                           OverviewContainer(
//                             mainTitle: 'Recent Route: Houston, TX to Denver, CO',
//                             requiredWidgets: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 CustomRichText(
//                                   title: 'Dates:',
//                                   subTitle: 'August 1 - August 4, 2024',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/calendar-alt-svgrepo-com (1) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Starting Point:',
//                                   subTitle: 'Houston, TX',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/backward-start-circle-line-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Destination:',
//                                   subTitle: 'Denver, CO',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/route-destination-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Load Types Transported:',
//                                   subTitle: 'Refrigerated Goods, Machinery Parts',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/load-circle-svgrepo-com (2) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             isImage: true,
//                             isImagesRequired: Image.asset(
//                                 fit: BoxFit.fill,
//                                 height: MediaQuery.sizeOf(context).height * 0.34.h,
//                                 width: MediaQuery.sizeOf(context).width * 0.15.w,
//                                 "assets/image/auth/Rectangle 1615 (1).png"),
//                           ),
//                           OverviewContainer(
//                             mainTitle: 'Recent Route: Houston, TX to Denver, CO',
//                             requiredWidgets: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 CustomRichText(
//                                   title: 'Dates:',
//                                   subTitle: 'August 1 - August 4, 2024',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/calendar-alt-svgrepo-com (1) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Starting Point:',
//                                   subTitle: 'Houston, TX',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/backward-start-circle-line-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Destination:',
//                                   subTitle: 'Denver, CO',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/route-destination-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Load Types Transported:',
//                                   subTitle: 'Refrigerated Goods, Machinery Parts',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/load-circle-svgrepo-com (2) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             isImage: true,
//                             isImagesRequired: Image.asset(
//                                 fit: BoxFit.fill,
//                                 height: MediaQuery.sizeOf(context).height * 0.34.h,
//                                 width: MediaQuery.sizeOf(context).width * 0.15.w,
//                                 "assets/image/auth/Rectangle 1615.png"),
//                           ),
//                           OverviewContainer(
//                             mainTitle: 'Recent Route: Houston, TX to Denver, CO',
//                             requiredWidgets: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 CustomRichText(
//                                   title: 'Dates:',
//                                   subTitle: 'August 1 - August 4, 2024',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/calendar-alt-svgrepo-com (1) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Starting Point:',
//                                   subTitle: 'Houston, TX',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/backward-start-circle-line-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Destination:',
//                                   subTitle: 'Denver, CO',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/route-destination-svgrepo-com 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                                 CustomRichText(
//                                   title: 'Load Types Transported:',
//                                   subTitle: 'Refrigerated Goods, Machinery Parts',
//                                   isRequiredIcon: true,
//                                   requiredIcon: Image.asset(
//                                     "assets/image/auth/load-circle-svgrepo-com (2) 1.png",
//                                     height: 20.h,
//                                     width: 20.w,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             isImage: true,
//                             isImagesRequired: Image.asset(
//                                 fit: BoxFit.fill,
//                                 height: MediaQuery.sizeOf(context).height * 0.34.h,
//                                 width: MediaQuery.sizeOf(context).width * 0.15.w,
//                                 "assets/image/auth/Rectangle 1615 (1).png"),
//                           ),
//                         ],
//                       ),
//           ],
//         ),
//         _isTips == false && _isAdd == false
//             ? Row(
//                 children: [
//                   const Spacer(),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _isAdd = true;
//                       });
//                     },
//                     child: const CircleAvatar(
//                       backgroundColor: AppColors.primaryColor,
//                       radius: 20,
//                       child: Icon(
//                         Icons.add,
//                         color: AppColors.primaryWhite,
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             : Container(),
//         CustomFooter(),
//       ],
//     );
//   }
// }

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/custom_footer.dart';
import 'package:truckerbs_website/widget/custom_rich_text.dart';
import 'package:truckerbs_website/widget/overview_container.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

class RecentTips extends StatefulWidget {
  const RecentTips({super.key});

  @override
  State<RecentTips> createState() => _RecentTipsState();
}

class _RecentTipsState extends State<RecentTips> {
  // form controllers
  final _routeCtrl = TextEditingController();
  final _startDateCtrl = TextEditingController();
  final _endDateCtrl = TextEditingController();
  final _startPointCtrl = TextEditingController();
  final _destCtrl = TextEditingController();

  File? _pickedFile;
  String? _pickedFileName;
  bool _loading = false;
  bool _showForm = false;
  Uint8List? _pickedFileBytes;
  @override
  void dispose() {
    _routeCtrl.dispose();
    _startDateCtrl.dispose();
    _endDateCtrl.dispose();
    _startPointCtrl.dispose();
    _destCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.media,
      allowMultiple: false,
      withData: kIsWeb,
    );
    if (result == null) return;

    final file = result.files.single;
    setState(() {
      _pickedFileName = file.name;
      if (kIsWeb) {
        // On web we get bytes
        _pickedFileBytes = file.bytes;
        _pickedFile = null;
      } else {
        _pickedFile = File(file.path!);
        _pickedFileBytes = null;
      }
    });
  }

  Future<void> _saveTrip() async {
    final hasFile = kIsWeb ? _pickedFileBytes != null : _pickedFile != null;

    // 2) Validate all fields, including picked file
    if (_routeCtrl.text.isEmpty ||
        _startDateCtrl.text.isEmpty ||
        _endDateCtrl.text.isEmpty ||
        _startPointCtrl.text.isEmpty ||
        _destCtrl.text.isEmpty ||
        !hasFile) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields & pick a file')),
      );
      return;
    }

    setState(() => _loading = true);

    try {
      // 3) Create a storage reference using the picked filename
      final storageRef = FirebaseStorage.instance.ref().child('trips/${DateTime.now().millisecondsSinceEpoch}_$_pickedFileName');

      // 4) Kick off upload: putData on web, putFile on mobile
      UploadTask uploadTask;
      if (kIsWeb) {
        uploadTask = storageRef.putData(
          _pickedFileBytes!,
          SettableMetadata(contentType: 'image/jpeg'),
        );
      } else {
        uploadTask = storageRef.putFile(_pickedFile!);
      }

      // 5) Await completion and grab the download URL
      final snapshot = await uploadTask;
      final fileUrl = await snapshot.ref.getDownloadURL();

      // 6) Write the Firestore document
      await FirebaseFirestore.instance.collection('trips').add({
        'route': _routeCtrl.text.trim(),
        'startDate': _startDateCtrl.text.trim(),
        'endDate': _endDateCtrl.text.trim(),
        'startingPoint': _startPointCtrl.text.trim(),
        'destination': _destCtrl.text.trim(),
        'fileUrl': fileUrl,
        'createdAt': FieldValue.serverTimestamp(),
      });

      // 7) Reset form fields & state
      _routeCtrl.clear();
      _startDateCtrl.clear();
      _endDateCtrl.clear();
      _startPointCtrl.clear();
      _destCtrl.clear();
      _pickedFile = null;
      _pickedFileBytes = null;
      _pickedFileName = null;

      setState(() {
        _loading = false;
        _showForm = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Trip saved!')),
      );
    } catch (e) {
      // 8) Handle errors
      setState(() => _loading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving trip: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),

        // ——————————————————
        // Dynamic area: either list, form, or “no trips” message
        // ——————————————————
        SizedBox(
          height: 600.h,
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('trips').snapshots(),
            builder: (ctx, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final docs = snap.data?.docs ?? [];

              // 1) Show form
              if (_showForm) {
                return _buildAddForm();
              }

              // 2) No trips yet
              if (docs.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20.h),
                      Text(
                        'No Trips Yet',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF8E8E93),
                          fontSize: 96.sp,
                        ),
                      ),
                    ],
                  ),
                );
              }

              // 3) Render recent trips
              return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final d = docs[i].data()! as Map<String, dynamic>;
                  return Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: OverviewContainer(
                        mainTitle: 'Recent Route: ${d['route']}',
                        requiredWidgets: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomRichText(
                              title: 'Dates:',
                              subTitle: '${d['startDate']} – ${d['endDate']}',
                              isRequiredIcon: true,
                              requiredIcon: const Icon(Icons.calendar_today),
                            ),
                            CustomRichText(
                              title: 'Starting Point:',
                              subTitle: d['startingPoint'],
                              isRequiredIcon: true,
                              requiredIcon: const Icon(Icons.place),
                            ),
                            CustomRichText(
                              title: 'Destination:',
                              subTitle: d['destination'],
                              isRequiredIcon: true,
                              requiredIcon: const Icon(Icons.flag),
                            ),
                          ],
                        ),
                        isImage: true,
                        isImagesRequired: Container(
                          width: 451.w,
                          height: 375.h,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.r),
                                bottomRight: Radius.circular(30.r),
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F989898),
                                blurRadius: 15,
                                offset: Offset(0, 4),
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          child:

                          Image.network(
                            width: 451.w,
                            height: 375.h,
                            d['fileUrl'],
                            loadingBuilder: (ctx, child, progress) {
                              if (progress == null) return child;
                              return Center(
                                  child: CircularProgressIndicator(
                                      value: progress.expectedTotalBytes != null
                                          ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes!
                                          : null));
                            },
                            errorBuilder: (ctx, err, st) => const Icon(Icons.broken_image),
                          ),
                        )),
                  );
                },
              );
            },
          ),
        ),

        // ——————————————————
        // Floating “+” button (when not in form)
        // ——————————————————
        if (!_showForm)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => setState(() => _showForm = true),
                  child: const CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 20,
                    child: Icon(Icons.add, color: AppColors.primaryWhite),
                  ),
                ),
              ],
            ),
          ),

        // ——————————————————
        // Footer
        // ——————————————————
        const CustomFooter(),
      ],
    );
  }

  Widget _buildAddForm() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add Trip',
                style: AppTextStyles.bebasStyle.copyWith(
                  color: const Color(0xFF333333),
                  fontSize: 96.sp,
                  letterSpacing: -0.58,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Video / Photo File',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: _pickFile,
                    child: Container(
                      width: 396.05.w,
                      height: 80.h,
                      decoration: ShapeDecoration(
                        color: const Color(0x19FF0000),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                      ),
                      child: Center(
                        child: Text(
                          _pickedFileName ?? 'Upload File',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF262626),
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          ReusableTextForm(
            controller: _routeCtrl,
            hintText: 'Enter Route',
          ),
          SizedBox(height: 12.h),
          Row(children: [
            Expanded(
              child: ReusableTextForm(
                controller: _startDateCtrl,
                hintText: 'Select Starting Date',
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: ReusableTextForm(
                controller: _endDateCtrl,
                hintText: 'Select Ending Date',
              ),
            ),
          ]),
          SizedBox(height: 12.h),
          Row(children: [
            Expanded(
              child: ReusableTextForm(
                controller: _startPointCtrl,
                hintText: 'Select Starting Point',
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: ReusableTextForm(
                controller: _destCtrl,
                hintText: 'Select Destination',
              ),
            ),
          ]),
          SizedBox(height: 20.h),
          CustomButton(
            title: _loading ? 'Saving…' : 'Save Trip',
            width: 396.w,
            onTap: () => _saveTrip(),
          ),
        ],
      ),
    );
  }
}
