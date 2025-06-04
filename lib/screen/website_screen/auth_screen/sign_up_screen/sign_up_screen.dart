import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/carreir_sign_up/carreir_sign_up.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/custom_borker/custom_broker.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/dispature_sign_up/dispature_signup.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/driver_sign_up/driver_sign_up.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/fleet_manager/fleet_manger.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/frieght_broker/firenght_broker.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/mechanics/mechanics.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/owner_operaror_signup/owner_operator.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/safety_officer/safety_officer.dart';
import 'package:truckerbs_website/screen/website_screen/auth_screen/sign_up_screen/shipper/shipper_signup.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

class SignUpScreen extends StatefulWidget {

  final VoidCallback onTapSignUp;

  const SignUpScreen({Key? key, required this.onTapSignUp})
      : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  //List of Accounts

  final List accountType=[
    'Carrier',
    'Owner-Operator',
    'Driver',
    'Freight Broker',
    'Dispatcher',
    'Fleet Manager',
    'Shipper',
    'Safety Officer',
    'Customs Broker',
    'Mechanic',
  ];
  bool _isSelectAccountType = false;
  int _currentIndex=0;



  @override
  Widget build(BuildContext context) {
    List<Widget> signUpScreens = [
      CarrierSignUp(onTapSignUp: widget.onTapSignUp),
      OwnerOperatorSignUp(onTapSignUp: widget.onTapSignUp),
      DriverSignUp(onTapSignUp: widget.onTapSignUp),
      FrieghtBrokerSignUp(onTapSignUp: widget.onTapSignUp),
     DispatureSignUp(onTapSignUp: widget.onTapSignUp),
    FleetManagerSignUp(onTapSignUp: widget.onTapSignUp),
      ShipperSignUp(onTapSignUp: widget.onTapSignUp),
   SafetyOfficerSignUp(onTapSignUp: widget.onTapSignUp),
      CustomBrokerSignUp(onTapSignUp: widget.onTapSignUp),
     MechanicsSignUp(onTapSignUp: widget.onTapSignUp),
    ];
    return Center(
      child: Container(
        width: 715.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        decoration: const BoxDecoration(
          color: AppColors.primaryWhite,
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 40,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child:
_isSelectAccountType==false?
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Create Your Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 56.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Pick the profile that fits your role in the logistics industry, and sign up to get started today!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF828282),
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 40,),

       ...List.generate(accountType.length, (index)=>  GestureDetector(
         onTap: (){
           setState(() {
             _currentIndex=index;
             _isSelectAccountType=true;
           });
         },
         child: Container(
           width: 660.w,
          margin: EdgeInsets.only(bottom: 10.h),
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10.h),
           decoration: ShapeDecoration(
             color: Colors.white,
             shape: RoundedRectangleBorder(
               side: BorderSide(width: 2.w, color:_currentIndex==index? Color(0xFFFF0000):Color(0xff828282)),
               borderRadius: BorderRadius.circular(16.r),
             ),
           ),
           child: Center(
             child:
             Text(
               accountType[index],
               textAlign: TextAlign.center,
               style: TextStyle(
                 color: _currentIndex==index? Color(0xFFFF0000):Color(0xff828282),
                 fontSize: 48.sp,
                 fontWeight: FontWeight.w500,
               ),
             ),
           ),
         ),
       ))


      ],
    )
    : _isSelectAccountType ? signUpScreens[_currentIndex] : Container(),

      ),
    );
  }
}
