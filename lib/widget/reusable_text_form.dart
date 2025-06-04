import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class ReusableTextForm extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color filledColor;
  final Color? borderColor;
  final Color? focusBorderColor;
  final String? hintText;
  final bool? obscureText;
  final bool? enabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextCapitalization? capitalize;
  final int? maxLine;
  final Color? textColor;


  const ReusableTextForm({
    super.key,
    this.validator,
    this.controller,
    this.keyboardType,
    this.textColor=AppColors.primaryBlack,
    this.capitalize=TextCapitalization.none,
    this.hintText,
    this.suffixIcon,
    this.maxLine=1,
    this.obscureText = false,
    this.enabled = true,
    this.prefixIcon,  this.filledColor = AppColors.primaryWhite,
    this.borderColor, this.focusBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return

      TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        textCapitalization: capitalize!,
        maxLines: maxLine!,

        style: TextStyle(color: textColor!),
        decoration: InputDecoration(
            filled: true,
            fillColor: filledColor,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabled: enabled!,
            hintText: hintText,

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
        // validations
        validator: validator);
  }
}
