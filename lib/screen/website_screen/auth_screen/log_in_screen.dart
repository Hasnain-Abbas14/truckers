import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

class LogInScreen extends StatefulWidget {
  final VoidCallback onTap; // Callback to navigate to the Signup screen
  final VoidCallback onTapLogIn; // Callback to navigate after login success

  const LogInScreen({
    Key? key,
    required this.onTap,
    required this.onTapLogIn,
  }) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoggingIn = false;

  /// Handles user login using Firebase Firestore
  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoggingIn = true;
    });

    try {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      // Query Firestore to validate the user
      final querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: email)
          .where('password', isEqualTo: password) // Compare plain passwords (not secure, hash them in production)
          .get();

      if (querySnapshot.docs.isEmpty) {
        // No user found with the provided credentials
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid email or password')),
        );
      } else {
        // User found: login successful
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login successful!')),
        );

        widget.onTapLogIn(); // Perform post-login action (e.g., navigate to dashboard)
      }
    } catch (e) {
      // Handle errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      setState(() {
        _isLoggingIn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
            )
          ],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text('Login',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: AppColors.primaryBlack,
                      fontSize: 56.sp,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  'Login with your credentials',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: const Color(0xFF828282),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Text('Email',
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: AppColors.text82,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 10.h),
              ReusableTextForm(
                controller: _emailController,
                hintText: 'Enter your email',
                focusBorderColor: AppColors.primaryColor,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$")
                      .hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24.h),
              Text('Password',
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: AppColors.text82,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 10.h),
              ReusableTextForm(
                controller: _passwordController,
                hintText: 'Enter your password',
                obscureText: true,
                focusBorderColor: AppColors.primaryColor,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add "Forgot Password?" functionality here if required
                    },
                    child: Text('Forgot Password?',
                        textAlign: TextAlign.right,
                        style: AppTextStyles.mulishStyle.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              CustomButton(
                title: _isLoggingIn ? 'Logging in...' : 'Login',
                onTap: _isLoggingIn ? (){} : _handleLogin,
                width: double.infinity.w,
              ),
              SizedBox(height: 32.h),
              GestureDetector(
                onTap: widget.onTap,
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Don’t have an account?  ',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFFC4C4C4),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        TextSpan(
                            text: 'Signup',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 62.h),
            ],
          ),
        ),
      ),
    );
  }
}
