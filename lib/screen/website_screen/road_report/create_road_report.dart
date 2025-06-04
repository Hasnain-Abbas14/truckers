import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/models/road_report_model.dart';
import 'package:truckerbs_website/services/road_report_service.dart';
import 'package:flutter/foundation.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_footer.dart';

class CreateRoadReport extends StatefulWidget {
  const CreateRoadReport({super.key});

  @override
  State<CreateRoadReport> createState() => _CreateRoadReportState();
}

class _CreateRoadReportState extends State<CreateRoadReport> {
  bool isCreateReport = false;
  bool isChecked = false;
  bool isCheckedOne = false;
  bool isCheckedTwo = false;
  bool isCheckedThree = false;
  bool isLoading = false;
  String selectedReportType = 'Story';
  bool isFileUploaded = false;
  String? uploadedFileName;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _tagSomeoneController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final RoadReportService _roadReportService = RoadReportService();
  dynamic pickedFile;
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
      disabledBorder: OutlineInputBorder(
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

  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.image,
        withData: true,
      );

      if (result != null) {
        setState(() {
          pickedFile = result.files.first;
          uploadedFileName = result.files.first.name;
          isFileUploaded = true;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error picking file: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    if (!RegExp(r'^\+?[\d\s-]{10,}$').hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      if (pickedFile == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please upload a file.')),
        );
        return;
      }
      if (!isCheckedThree) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please confirm you own the content')),
        );
        return;
      }

      if (!mounted) return;
      setState(() {
        isLoading = true;
      });

      try {
        String? fileUrl = await _roadReportService.uploadFile(context, pickedFile, uploadedFileName ?? "");

        List<String> socialMediaTags = [];
        if (isChecked) socialMediaTags.add('Instagram');
        if (isCheckedOne) socialMediaTags.add('YouTube');
        if (isCheckedTwo) socialMediaTags.add('Facebook');

        // Create road report model
        RoadReportModel report = RoadReportModel(
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          email: _emailController.text,
          phone: _phoneController.text,
          location: _locationController.text,
          tagSomeone: _tagSomeoneController.text,
          description: _descriptionController.text,
          reportType: selectedReportType,
          fileUrl: "",
          socialMediaTags: socialMediaTags,
          createdAt: DateTime.now(),
          signature: '${_firstNameController.text} ${_lastNameController.text}',
        );

        await _roadReportService.createRoadReport(report);

        if (!mounted) return;
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Report submitted successfully!'),
            backgroundColor: Colors.green,
          ),
        );
        
        _formKey.currentState!.reset();
        setState(() {
          pickedFile = null;
          uploadedFileName = null;
          isFileUploaded = false;
          isChecked = false;
          isCheckedOne = false;
          isCheckedTwo = false;
          isCheckedThree = false;
          selectedReportType = 'Story';
          isLoading = false;
        });
      } catch (e) {
        print("error:>>$e");
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error submitting report: $e'),
            backgroundColor: Colors.red,
          ),
        );
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
                  "assets/website/tbs_tv_screens/Group 31598.png",
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Share Your Experience',
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
          SizedBox(height: 30.h),
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
              children: [
                Center(
                  child: Text('Road Report',
                      style: AppTextStyles.bebasStyle.copyWith(
                        color: const Color(0xFF333333),
                        fontSize: 76.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,
                      )),
                ),
                Text(
                  'Video / Photo File',
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: const Color(0xFF828282),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: _pickFile,
                      child: Container(
                        width: 396.05.w,
                        height: 80.h,
                        decoration: ShapeDecoration(
                          color: const Color(0x19FF0000),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_file_outlined,
                              color: const Color(0xFF262626),
                              size: 25.r,
                            ),
                            SizedBox(width: 10.w),
                            Text('Upload File',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.32,
                                ))
                          ],
                        ),
                      ),
                    ),
                    if (isFileUploaded && uploadedFileName != null) ...[
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 20.r,
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Text(
                                'File uploaded: $uploadedFileName',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: Colors.green,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Type of Report',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Story',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const Spacer(),
                                PopupMenuButton(
                                  color: AppColors.primaryWhite,
                                  splashRadius: 14.r,
                                  onOpened: () {},
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {
                                          setState(() {
                                            selectedReportType = 'Story';
                                          });
                                        },
                                        child: Text(
                                          'Story',
                                          style: AppTextStyles.poppinsStyle.copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {
                                          setState(() {
                                            selectedReportType = 'Incident';
                                          });
                                        },
                                        child: Text(
                                          'Incident',
                                          style: AppTextStyles.poppinsStyle.copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      PopupMenuItem(
                                        height: 13.h,
                                        onTap: () {
                                          setState(() {
                                            selectedReportType = 'Near Miss';
                                          });
                                        },
                                        child: Text(
                                          'Near Miss',
                                          style: AppTextStyles.poppinsStyle.copyWith(
                                            color: const Color(0xFF828282),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  surfaceTintColor: AppColors.primaryWhite,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.text33,
                                  ),
                                ),
                              ],
                            ),
                          )
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
                          Text('First Name',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          TextFormField(
                            controller: _firstNameController,
                            decoration: customInputDecoration(
                              hintText: "Enter first name",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Last Name',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
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
                              controller: _lastNameController,
                              decoration: customInputDecoration(
                                hintText: "Enter last name",
                              ),
                            ),
                          ),
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
                          Text('Email',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
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
                              controller: _emailController,
                              validator: _validateEmail,
                              decoration: customInputDecoration(
                                hintText: "Enter Email",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Phone Number',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
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
                              controller: _phoneController,
                              validator: _validatePhone,
                              decoration: customInputDecoration(
                                hintText: "Enter Phone Number",
                              ),
                            ),
                          ),
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
                          Text('Location',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
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
                              controller: _locationController,
                              decoration: customInputDecoration(
                                hintText: "Choose location",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Tag Someone',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
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
                              controller: _tagSomeoneController,
                              decoration: customInputDecoration(
                                hintText: "@username",
                              ),
                            ),
                          ),
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
                          Text('Where do you want us to tag?',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                                activeColor: AppColors.primaryColor, // Set active color to red
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text('Instagram',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              const Spacer(),
                              Checkbox(
                                value: isCheckedOne,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedOne = value ?? false;
                                  });
                                },
                                activeColor: AppColors.primaryColor, // Set active color to red
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text('YouTube',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isCheckedTwo,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedTwo = value ?? false;
                                  });
                                },
                                activeColor: AppColors.primaryColor, // Set active color to red
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text('Facebook',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('Description',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  maxLines: 6,
                  controller: _descriptionController,
                  decoration: customInputDecoration(
                    hintText: 'Write description here',
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isCheckedThree,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedThree = value ?? false;
                        });
                      },
                      activeColor: AppColors.primaryColor, // Set active color to red
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Text('I confirm I own the content and authorize Trucker\'s Based Social Inc. to post it.',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFF262626),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Signature:',
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF828282),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                        width: 411.w,
                        child: const Divider(
                          thickness: 1,
                          height: 1,
                          color: Color(0xff000000),
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset(
                      "assets/website/loadboard_overview/pen-tool-svgrepo-com (1) 1.png",
                      height: 25.h,
                      width: 25.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  title: isLoading ? "Submitting..." : "Submit Report",
                  onTap: isLoading ? null : () => _submitForm(),
                  width: 396.w,
                  height: 80.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          const CustomFooter(),
        ],
      ),
    );
  }
}
