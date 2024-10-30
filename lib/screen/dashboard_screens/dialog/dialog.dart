import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/reusable_text_form.dart';


class DialogForChanges extends StatelessWidget {

  const DialogForChanges({super.key, });



  @override
  Widget build(BuildContext context) {
    return

      Center(
        child: SizedBox(
          width: 424.w,
          child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Dialog(
            backgroundColor: AppColors.primaryWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20).w,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
               Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close,color: AppColors.hintColor,))
                    ],
                  ),
              Center(
                child: Text(
                  'Settings',
                  style: AppTextStyles.boldStyle
                      .copyWith(
                      color:
                      AppColors.hintColor,
                      fontSize: 24.sp),
                ),
              ),
                 SizedBox(
                    height: 15.h,
                  ),
                  Text("New Password",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16.sp, color: AppColors.hintColor,),),
                   SizedBox(
                    height: 10.h,
                  ),
                  ReusableTextForm(
                    hintText: "New Password",
                    validator: (value){
                      if(value ==null || value.isEmpty){
                        return 'This field is required';
                      }
                      else{
                        return null;
                      }
                    },
                  ),

              SizedBox(
                    height: 15.h,
                  ),
                  Text("Confirm Password",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16.sp, color: AppColors.hintColor,),),
             SizedBox(
                    height: 10.h,
                  ),
                  ReusableTextForm(
                    hintText: "Confirm Password",
                    validator: (value){
                      if(value ==null || value.isEmpty){
                        return 'This field is required';
                      }
                      else{
                        return null;
                      }
                    },
                  ),

                SizedBox(height: 20.h,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(

                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9).w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(08).w,
                        color: AppColors.primaryColor,

                      ),
                      child: Center(child: Text('Save',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite,fontSize: 18.sp),)),
                    ),
                  ),
                ],
              ),
            ),
          ),
              ),
        ),
      );
  }
}