import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../widget/reusable_text_form.dart';
import 'dialog/dialog.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {


  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Operator Settings',
                style: AppTextStyles.boldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 24.sp),
              ),
            SizedBox(height: 20.h,),
              Row(
                 crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child:

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Text("Full Name",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16.sp, color: AppColors.hintColor,),),
                  SizedBox(
                        height: 10.h,
                      ),
                      ReusableTextForm(
                        hintText: "Your Name",
                        validator: (value){
                          if(value ==null || value.isEmpty){
                            return 'This field is required';
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ],
                    ),
                  ),
                  const SizedBox(width: 40,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Text("Email Address",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16.sp, color: AppColors.hintColor,),),
                 SizedBox(
                        height: 10.h,
                      ),
                      ReusableTextForm(
                        hintText: "example@gmail.com",
                        validator: (value){
                          if(value ==null || value.isEmpty){
                            return 'This field is required';
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ],
                    ),
                  ),
               SizedBox(width: 40.w,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Text("Password",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16.sp, color: AppColors.hintColor,),),
                  SizedBox(
                        height: 10.h,
                      ),
                      ReusableTextForm(
                        hintText: "Password",
                        validator: (value){
                          if(value ==null || value.isEmpty){
                            return 'This field is required';
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ],
                    ),
                  ),

                ],
              ),
         SizedBox(height: 20.h,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,children: [
                GestureDetector(onTap: (){
                  showDialog(context: context, builder: (BuildContext context) { return const DialogForChanges();}, );
                },
                  child: Container(
                    width:194.w,
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9).w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(08).w,
                      border: Border.all(color:AppColors.primaryColor,)

                    ),
                    child: Center(child: Text('Change Password',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryColor,fontSize: 18.sp),)),
                  ),
                ),
              SizedBox(width: 20.w,),
                Container(
                  width: 136.w,
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9).w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(08).w,
                    color: AppColors.primaryColor,

                  ),
                  child: Center(child: Text('Save',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite,fontSize: 18.sp),)),
                ),
              ],),
          SizedBox(height: 40.h,),
            ],
          ),
        ),
      );
  }
}




