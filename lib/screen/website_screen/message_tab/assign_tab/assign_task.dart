import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

import '../../../../themes/app_text_styles.dart';


class AssignTask extends StatefulWidget {
  const AssignTask({super.key});

  @override
  State<AssignTask> createState() => _AssignTaskState();
}

class _AssignTaskState extends State<AssignTask> {
  Uint8List? _selectedProfileImageBytes;
  Uint8List? _selectedFileBytes;
  String? _selectedFileName;
  String? _selectedProfileImageName;

  /// Picks a file using FilePicker for Flutter Web
  Future<void> _pickFile({required bool isProfileImage}) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
        withData: true,
      );

      if (result != null && result.files.single.bytes != null) {
        setState(() {
          if (isProfileImage) {
            _selectedProfileImageBytes = result.files.single.bytes;
            _selectedProfileImageName = result.files.single.name;
          } else {
            _selectedFileBytes = result.files.single.bytes;
            _selectedFileName = result.files.single.name;
          }
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking file: $e')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 715.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 40,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Assign Task',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 56.sp,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Text(
                  'Task Name',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 24.sp,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h,),
                ReusableTextForm(hintText: 'Task Name',),
                SizedBox(height: 15.h,),
      Text(
        'Instruction',
        style: TextStyle(
          color: Color(0xFF828282),
          fontSize: 24.sp,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
      ),
                SizedBox(height: 5.h,),

      TextFormField(

          maxLines: 6,

          decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.primaryWhite,

              hintText:'Write here',

              hintStyle:AppTextStyles.regularStyle.copyWith(fontSize: 14,color: AppColors.hintColor),

              contentPadding: const EdgeInsets.all(10).w,

              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.redColor
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.hintColor
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.redColor
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.primaryColor
                ),
              )
          ),
      ),
                SizedBox(height: 15.h,),

                Text(
                  'Receiver Contact',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 24.sp,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h,),
                ReusableTextForm(hintText: 'Receiver Contact',),
                SizedBox(height: 15.h,),


                SizedBox(height: 15.h,),
                Text(
                  'Pickup Location',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 24.sp,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h,),
                ReusableTextForm(hintText: 'Select Location',suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add,
                    size: 24.r,
                    color: AppColors.primaryWhite,),
                  ),
                ),),
                SizedBox(height: 15.h,),
                Text(
                  'Drop Location',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 24.sp,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h,),
                ReusableTextForm(hintText: 'Select Location',suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add,
                      size: 24.r,
                      color: AppColors.primaryWhite,),
                  ),
                ),),
                SizedBox(height: 15.h,),

                SizedBox(height: 15.h,),
                Text(
                  'Assign Task to',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 24.sp,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h,),
                ReusableTextForm(hintText: 'Select Driver',suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add,
                      size: 24.r,
                      color: AppColors.primaryWhite,),
                  ),
                ),),
                SizedBox(height: 15.h,),

                GestureDetector(
                  onTap: () => _pickFile(isProfileImage: true),
                  child: Container(
                    width: double.infinity,
                    height: 235.h,
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                    decoration: ShapeDecoration(
                      color: AppColors.primaryWhite,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: AppColors.borderLight,
                        ),
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                    ),
                    child: _selectedProfileImageBytes == null
                        ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.camera_alt_outlined,
                          color: Color(0xffC4C4C4),
                          size: 40,
                        ),
                        Text(
                          'Upload File',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFFC4C4C4),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                        : Image.memory(
                      _selectedProfileImageBytes!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                
                SizedBox(height: 15.h,),
                CustomButton(
                    width: double.infinity,
                    title: "Assign Task", onTap: (){})

              ],
            ),
          )
        ],
      ),
    );
  }
}
