import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/app_list/app_list.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_button.dart';


class PaymentScreen extends StatelessWidget {
  final VoidCallback onMakePayment;
  const PaymentScreen({super.key, required this.onMakePayment});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 715.w,
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50).w,
        decoration: const BoxDecoration(
          color: AppColors.primaryWhite,
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
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                '\$5',
                textAlign: TextAlign.center,
                style: AppTextStyles.mulishStyle.copyWith(  color: Colors.black,
                  fontSize: 56.sp,
                  fontWeight: FontWeight.w600,)
              ),
            ),
            SizedBox(height: 40.h,),
            Text(
              'Payment Method',
              style: AppTextStyles.mulishStyle.copyWith(    color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,)
            ),

            SizedBox(height: 40.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(paymentMethods.length, (index)=> Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).w
                ,
                child: Image.asset(
                    height: 50.h,width: 80.w
                    ,
                    fit: BoxFit.fill,
                    paymentMethods[index]),
              )),
            ),

            SizedBox(height: 36.h,),
            Text(
              'Payment Details',
              style: AppTextStyles.mulishStyle.copyWith(   color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,)
            ),

            SizedBox(height: 20.h,),
            TextFormField(


                style: AppTextStyles.mulishStyle.copyWith(color: Colors.black.withOpacity(0.41999998688697815),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,),
                decoration: InputDecoration(

                    hintText: "Enter Name on Card",

                    hintStyle:AppTextStyles.regularStyle.copyWith(fontSize: 14,color: AppColors.hintColor),

                    contentPadding: const EdgeInsets.all(10).w,
                    border:UnderlineInputBorder(

                      borderSide: BorderSide(
                          color: AppColors.primaryBlack
                      ),
                    ),
                    focusedErrorBorder:UnderlineInputBorder(

                      borderSide: BorderSide(
                          color: AppColors.redColor
                      ),
                    ),
                    errorBorder:UnderlineInputBorder(

                      borderSide: const BorderSide(
                          color: AppColors.redColor
                      ),
                    ),
                    focusedBorder:UnderlineInputBorder(

                      borderSide: BorderSide(
                          color:AppColors.primaryColor
                      ),
                    )
                ),
            ),

            SizedBox(height: 20.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(


                    style: AppTextStyles.mulishStyle.copyWith(color: Colors.black.withOpacity(0.41999998688697815),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,),
                    decoration: InputDecoration(

                        hintText: "Card Number",

                        hintStyle:AppTextStyles.regularStyle.copyWith(fontSize: 14,color: AppColors.hintColor),

                        contentPadding: const EdgeInsets.all(10).w,
                        border:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color: AppColors.primaryBlack
                          ),
                        ),
                        focusedErrorBorder:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color: AppColors.redColor
                          ),
                        ),
                        errorBorder:UnderlineInputBorder(

                          borderSide: const BorderSide(
                              color: AppColors.redColor
                          ),
                        ),
                        focusedBorder:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color:AppColors.primaryColor
                          ),
                        )
                    ),
                  ),
                ),
                Image(
                  height: 42.h,width: 42.w,
                    image: AssetImage("assets/website/auth_screen/pngegg 1.png")),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        padding: EdgeInsets.zero,
                        height: 40,
                        onTap: () {

                        },
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 20, right: 40),
                                child:

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                  ],
                                )
                            ),
                          ],
                        ),
                      ),

                    ];
                  },
                  offset: const Offset(0, 30),
                  color: AppColors.primaryWhite,
                  surfaceTintColor: AppColors.primaryWhite,
                  icon:   Icon(
                    Icons.arrow_drop_down_rounded,
                    color: AppColors.primaryBlack,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(


                    style: AppTextStyles.mulishStyle.copyWith(color: Colors.black.withOpacity(0.41999998688697815),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,),
                    decoration: InputDecoration(

                        hintText: "Expire Date",

                        hintStyle:AppTextStyles.regularStyle.copyWith(fontSize: 14,color: AppColors.hintColor),

                        contentPadding: const EdgeInsets.all(10).w,
                        border:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color: AppColors.primaryBlack
                          ),
                        ),
                        focusedErrorBorder:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color: AppColors.redColor
                          ),
                        ),
                        errorBorder:UnderlineInputBorder(

                          borderSide: const BorderSide(
                              color: AppColors.redColor
                          ),
                        ),
                        focusedBorder:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color:AppColors.primaryColor
                          ),
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(


                    style: AppTextStyles.mulishStyle.copyWith(color: Colors.black.withOpacity(0.41999998688697815),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,),
                    decoration: InputDecoration(

                        hintText: "CVV",

                        hintStyle:AppTextStyles.regularStyle.copyWith(fontSize: 14,color: AppColors.hintColor),

                        contentPadding: const EdgeInsets.all(10).w,
                        border:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color: AppColors.primaryBlack
                          ),
                        ),
                        focusedErrorBorder:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color: AppColors.redColor
                          ),
                        ),
                        errorBorder:UnderlineInputBorder(

                          borderSide: const BorderSide(
                              color: AppColors.redColor
                          ),
                        ),
                        focusedBorder:UnderlineInputBorder(

                          borderSide: BorderSide(
                              color:AppColors.primaryColor
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 60.h,),
            CustomButton(title: "Make Payment",width: double.infinity, onTap:onMakePayment,height: 70.h,)





          ],
        ),
      ),
    );
  }
}
