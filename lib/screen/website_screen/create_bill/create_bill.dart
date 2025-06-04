import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_colors.dart';
import '../../../widget/custom_footer.dart';

class CreateBill extends StatefulWidget {
  final VoidCallback onTapSubmitBill;
  const CreateBill({super.key, required this.onTapSubmitBill});

  @override
  State<CreateBill> createState() => _CreateBillState();
}

class _CreateBillState extends State<CreateBill> {
  final _formKey = GlobalKey<FormState>();

  // controllers for every field
  final _shipperNameCtrl       = TextEditingController();
  final _shipperAddressCtrl    = TextEditingController();
  final _shipperPhoneCtrl      = TextEditingController();
  final _consigneeNameCtrl     = TextEditingController();
  final _consigneeAddressCtrl  = TextEditingController();
  final _consigneePhoneCtrl    = TextEditingController();

  final _loadingNumCtrl        = TextEditingController();
  final _loadIdCtrl            = TextEditingController();
  final _pickupLocCtrl         = TextEditingController();
  final _pickupDateCtrl        = TextEditingController();
  final _carrierNameCtrl       = TextEditingController();
  final _carrierPhoneCtrl      = TextEditingController();
  final _dropOffLocCtrl        = TextEditingController();
  final _dropOffDateCtrl       = TextEditingController();

  final _descriptionCtrl       = TextEditingController();
  final _numPackagesCtrl       = TextEditingController();
  final _weightCtrl            = TextEditingController();
  final _dimensionsCtrl        = TextEditingController();
  final _distanceCtrl          = TextEditingController();
  final _rateCtrl              = TextEditingController();
  final _freightClassCtrl      = TextEditingController();
  final _unNumberCtrl          = TextEditingController();

  bool isChecked     = false; // hazardous?
  bool isCheckedOne  = false; // terms agree
  int  _selectedValue= 1;     // prepaid/collect/third

  File? pickedFile;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.image,
    );
    if (result != null) {
      setState(() {
        pickedFile = File(result.files.single.path!);
      });
    }
  }

  void _submitForm() {
    if (!_formKey.currentState!.validate()) return;

    if (pickedFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please upload a file.')),
      );
      return;
    }
    if (!isCheckedOne) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please agree to terms.')),
      );
      return;
    }

    widget.onTapSubmitBill();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Shipper & Consignee Container (unchanged)
            Container(
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
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shipper',
                            style: AppTextStyles.bebasStyle.copyWith(
                              color: const Color(0xFF333333),
                              fontSize: 96.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.58,
                            )),
                        SizedBox(height: 25.h),
                        Text('Name',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 4.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: TextFormField(
                            controller: _shipperNameCtrl,
                            validator: (v) => v == null || v.isEmpty ? 'Please enter Name' : null,
                            decoration: customInputDecoration(hintText: "Enter Name"),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text('Address',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 4.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: TextFormField(
                            controller: _shipperAddressCtrl,
                            validator: (v) => v == null || v.isEmpty ? 'Please enter Address' : null,
                            decoration: customInputDecoration(hintText: "Enter Address"),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text('Phone Number',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 4.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: TextFormField(
                            controller: _shipperPhoneCtrl,
                            validator: (v) => v == null || v.isEmpty ? 'Please enter Phone Number' : null,
                            decoration: customInputDecoration(hintText: "Enter Phone Number"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Consignee',
                            style: AppTextStyles.bebasStyle.copyWith(
                              color: const Color(0xFF333333),
                              fontSize: 96.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.58,
                            )),
                        SizedBox(height: 25.h),
                        Text('Name',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 4.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: TextFormField(
                            controller: _consigneeNameCtrl,
                            validator: (v) => v == null || v.isEmpty ? 'Please enter Name' : null,
                            decoration: customInputDecoration(hintText: "Enter Name"),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text('Address',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 4.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: TextFormField(
                            controller: _consigneeAddressCtrl,
                            validator: (v) => v == null || v.isEmpty ? 'Please enter Address' : null,
                            decoration: customInputDecoration(hintText: "Enter Address"),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text('Phone Number',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 4.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: TextFormField(
                            controller: _consigneePhoneCtrl,
                            validator: (v) => v == null || v.isEmpty ? 'Please enter Phone Number' : null,
                            decoration: customInputDecoration(hintText: "Enter Phone Number"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h),

            /// Create Bill & Upload File + Billing Fields
            Container(
              width: 1720.w,
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
                  // Title + Upload File
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text('Create Bill',
                            style: AppTextStyles.bebasStyle.copyWith(
                              color: const Color(0xFF333333),
                              fontSize: 76.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.58,
                            )),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Video / Photo File',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          GestureDetector(
                            onTap: _pickFile,
                            child: Container(
                              width: 460.w,
                              height: 80.h,
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: const Color(0x19FF0000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.attach_file_outlined,
                                    color: const Color(0xFF262626),
                                    size: 25.r,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text('Upload File',
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.32,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // Loading Number, Load ID, Pickup Location, Pickup Date
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25.h),
                            Text('Loading Number',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _loadingNumCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Loading Number' : null,
                                decoration: customInputDecoration(hintText: "Enter Loading Number"),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text('Load ID',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _loadIdCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Load ID' : null,
                                decoration: customInputDecoration(hintText: "Enter Load ID"),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text('Pickup Location',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _pickupLocCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Pickup Location' : null,
                                decoration: customInputDecoration(hintText: "Choose Pickup Location"),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text('Pickup Date',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _pickupDateCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Pickup Date' : null,
                                decoration: customInputDecoration(hintText: "Choose Pickup Date"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25.h),
                            Text('Carrier Name',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _carrierNameCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Carrier Name' : null,
                                decoration: customInputDecoration(hintText: "Enter Carrier Name"),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text('Phone Number',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _carrierPhoneCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Phone Number' : null,
                                decoration: customInputDecoration(hintText: "Enter Phone Number"),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text('Drop-off Location',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _dropOffLocCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Drop-off Location' : null,
                                decoration: customInputDecoration(hintText: "Enter Drop-off Location"),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text('Drop-off Date',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _dropOffDateCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter Drop-off Date' : null,
                                decoration: customInputDecoration(hintText: "Enter Drop-off Date"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // Description
                  Text('Description',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF828282),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: _descriptionCtrl,
                    validator: (v) => v == null || v.isEmpty ? 'Please enter description' : null,
                    maxLines: 6,
                    decoration: customInputDecoration(
                      hintText: 'Brief summary of what was transported',
                    ),
                  ),

                  SizedBox(height: 20.h),

                  // Number of packages / Weight / Dimensions
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Number of packages',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _numPackagesCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter number of packages' : null,
                                decoration: customInputDecoration(hintText: "Number of packages"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Weight',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _weightCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter weight' : null,
                                decoration: customInputDecoration(hintText: "Enter Weight"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dimensions',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _dimensionsCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter dimensions' : null,
                                decoration: customInputDecoration(hintText: "Enter Dimensions"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // Distance / Rate
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Distance Travelled',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _distanceCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter distance' : null,
                                decoration: customInputDecoration(hintText: "Enter Distance Travelled"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rate per mile',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _rateCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter rate' : null,
                                decoration: customInputDecoration(hintText: "Enter Rate per mile"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // Freight Class + Hazardous Materials / UN Number
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Freight Class',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _freightClassCtrl,
                                validator: (v) => v == null || v.isEmpty ? 'Please enter freight class' : null,
                                decoration: customInputDecoration(hintText: "Enter Freight Class"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => setState(() => isChecked = val!),
                                  activeColor: AppColors.primaryBlack,
                                ),
                                SizedBox(width: 10.w),
                                Text('Hazardous Materials',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF828282),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _unNumberCtrl,
                                validator: (v) {
                                  if (isChecked && (v == null || v.isEmpty)) {
                                    return 'Please enter UN Number';
                                  }
                                  return null;
                                },
                                decoration: customInputDecoration(hintText: "Enter UN Number"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // Payment Method
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Payment Method',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 15.h),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _selectedValue,
                                  activeColor: AppColors.primaryColor,
                                  onChanged: (v) => setState(() => _selectedValue = v!),
                                ),
                                SizedBox(width: 10.w),
                                Text('Prepaid', style: AppTextStyles.mulishStyle.copyWith(fontSize: 24.sp)),
                                const Spacer(),
                                Radio(
                                  value: 2,
                                  groupValue: _selectedValue,
                                  activeColor: AppColors.primaryColor,
                                  onChanged: (v) => setState(() => _selectedValue = v!),
                                ),
                                SizedBox(width: 10.w),
                                Text('Collect', style: AppTextStyles.mulishStyle.copyWith(fontSize: 24.sp)),
                                const Spacer(),
                                Radio(
                                  value: 3,
                                  groupValue: _selectedValue,
                                  activeColor: AppColors.primaryColor,
                                  onChanged: (v) => setState(() => _selectedValue = v!),
                                ),
                                SizedBox(width: 10.w),
                                Text('Third Party', style: AppTextStyles.mulishStyle.copyWith(fontSize: 24.sp)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),
                      // UPI / Google Pay / PhonePe / Paytm Logos (unchanged)
                      Expanded(
                        child: Container(
                          width: 791.w,
                          height: 206.h,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/website/billing/UPI_logo_PNG_lyp5s5 1.png", height: 36.h, width: 133.w),
                              const Spacer(),
                              Image.asset("assets/website/billing/Google_Pay_Button_PNG_Image_Free_Download_searchpng_com-removebg-preview 1.png", height: 163.h, width: 163.w),
                              const Spacer(),
                              Image.asset("assets/website/billing/PhonePe_Logo_PNG_Image_Free_Download_Searchpng_com-removebg-preview 1.png", height: 109.h, width: 109.w),
                              const Spacer(),
                              Image.asset("assets/website/billing/Paytm_Circle_Logo_PNG_Image_Free_Download_searchpng_com-removebg-preview 1 (1).png", height: 105.h, width: 105.w),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 70.h),

                  // Signatures text + agreement checkbox
                  Text('Signatures:',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF828282),
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(height: 30.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Shipper',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(width: 10.w),
                      const Expanded(child: Divider(thickness: 1, color: Colors.black)),
                      SizedBox(width: 30.w),
                      Text('Carrier',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(width: 10.w),
                      const Expanded(child: Divider(thickness: 1, color: Colors.black)),
                      SizedBox(width: 30.w),
                      Text('Consignee',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(width: 10.w),
                      const Expanded(child: Divider(thickness: 1, color: Colors.black)),
                      SizedBox(width: 30.w),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckedOne,
                        onChanged: (val) => setState(() => isCheckedOne = val!),
                        activeColor: AppColors.primaryBlack,
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Text(
                          'By submitting this document, you agree to the terms and conditions of carriage, including but not limited to the responsibility for the safe transport of goods, liability limitations, and compliance with all applicable laws and regulations.',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),

                  // Submit & Save Draft
                  Row(
                    children: [
                      CustomButton(
                        title: "Submit Bill",
                        onTap: _submitForm,
                        width: 396.w,
                        height: 80.h,
                      ),
                      SizedBox(width: 15.w),
                      Container(
                        width: 396.05.w,
                        height: 80.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0xFFFF0000)),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Save as draft',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFFFF0000),
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const CustomFooter(),
          ],
        ),
      ),
    );
  }

  InputDecoration customInputDecoration({
    required String hintText,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.mulishStyle.copyWith(
        color: const Color(0xFF262626),
        fontSize: 26.sp,
        fontWeight: FontWeight.w400,
      ),
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
}
