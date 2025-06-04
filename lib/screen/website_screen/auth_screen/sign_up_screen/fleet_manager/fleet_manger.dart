import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Firebase Auth
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_text_styles.dart';
import '../../../../../widget/custom_button.dart';
import '../../../../../widget/reusable_text_form.dart';

class FleetManagerSignUp extends StatefulWidget {
  final VoidCallback onTapSignUp;
  const FleetManagerSignUp({super.key, required this.onTapSignUp});

  @override
  State<FleetManagerSignUp> createState() => _FleetManagerSignUpState();
}

class _FleetManagerSignUpState extends State<FleetManagerSignUp> {
  final _formKey = GlobalKey<FormState>();

  // Create separate controllers for each field.
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  // If you need a separate "company" field, create a dedicated controller.
  // For now we assume _nameController holds the fleet manager's full name.
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // File upload variables.
  // Profile image – for the fleet manager's profile photo.
  Uint8List? _selectedProfileImageBytes;
  String? _selectedProfileImageName;
  String? _uploadedProfileImageUrl;

  // Optional extra file (for example, a business license document)
  Uint8List? _selectedFileBytes;
  String? _selectedFileName;
  String? _uploadedFileUrl;

  bool _isSubmitting = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  /// Validators
  bool _isValidEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }
  bool _isValidPhoneNumber(String phoneNumber) {
    return RegExp(r'^\d+$').hasMatch(phoneNumber);
  }
  bool _isValidPassword(String password) {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password);
  }

  /// Picks a file using FilePicker.
  /// When [isProfileImage] is true the file is used for the profile image;
  /// otherwise, it is used for the extra file.
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

  /// Uploads the profile image to Firebase Storage.
  Future<void> _uploadProfileImageToFirebase() async {
    if (_selectedProfileImageBytes == null || _selectedProfileImageName == null)
      return;
    try {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('fleet_manager_profiles')
          .child('profile_${DateTime.now().millisecondsSinceEpoch}_${_selectedProfileImageName}');
      final uploadTask = await storageRef.putData(_selectedProfileImageBytes!);
      final fileUrl = await uploadTask.ref.getDownloadURL();
      setState(() {
        _uploadedProfileImageUrl = fileUrl;
      });
      print('Profile image uploaded: $fileUrl');
    } catch (e) {
      print('Error uploading profile image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error uploading profile image: $e')));
    }
  }

  /// Uploads the extra file (optional) to Firebase Storage.
  Future<void> _uploadFileToFirebase() async {
    if (_selectedFileBytes == null || _selectedFileName == null) return;
    try {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('fleet_manager_uploads')
          .child('file_${DateTime.now().millisecondsSinceEpoch}_${_selectedFileName}');
      final uploadTask = await storageRef.putData(_selectedFileBytes!);
      final fileUrl = await uploadTask.ref.getDownloadURL();
      setState(() {
        _uploadedFileUrl = fileUrl;
      });
      print('Additional file uploaded: $fileUrl');
    } catch (e) {
      print('Error uploading additional file: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error uploading file: $e')));
    }
  }

  /// Creates a new user with Firebase Auth and then saves the fleet manager’s details to Firestore.
  Future<void> _uploadUserData() async {
    setState(() {
      _isSubmitting = true;
    });
    try {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      // Create a new user with Firebase Authentication.
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final uid = userCredential.user!.uid;

      // Save additional user data in Firestore using the UID as the document ID.
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'name': _nameController.text.trim(),
        'email': email,
        'phone_number': _phoneController.text.trim(),
        'profile_image_url': _uploadedProfileImageUrl,
        'uploaded_file_url': _uploadedFileUrl,
        'isApprove': false,
        'account_type': 'FleetManager',
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Signup successful!')));
      widget.onTapSignUp();
    } on FirebaseAuthException catch (e) {
      String errorMessage = e.message ?? 'Signup failed';
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage)));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error saving data: $e')));
    } finally {
      setState(() {
        _isSubmitting = false;
      });
    }
  }

  /// Handles the complete signup flow.
  Future<void> _handleSignup() async {
    if (_formKey.currentState!.validate()) {
      await _uploadProfileImageToFirebase();
      await _uploadFileToFirebase();
      await _uploadUserData();
      widget.onTapSignUp();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fix the errors in the form')),
      );
    }
  }

  /// Helper widget to build an input field with a label and validation.
  Widget _buildInputField(
      String label,
      TextEditingController controller,
      String hintText, {
        bool obscureText = false,
        String? Function(String?)? validator,
        Widget? suffixIcon,
      }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.mulishStyle.copyWith(
            color: AppColors.text82,
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10.h),
        ReusableTextForm(
          controller: controller,
          hintText: hintText,
          focusBorderColor: AppColors.primaryColor,
          obscureText: obscureText,
          validator: validator,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Oversee vehicles and drivers?',
                style: AppTextStyles.mulishStyle.copyWith(
                  color: AppColors.primaryBlack,
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                'Create your account to manage fleets and operations more effectively.',
                textAlign: TextAlign.center,
                style: AppTextStyles.mulishStyle.copyWith(
                  color: const Color(0xFF828282),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            // Profile Image Picker
            Center(
              child: GestureDetector(
                onTap: () => _pickFile(isProfileImage: true),
                child: CircleAvatar(
                  radius: 45.r,
                  backgroundColor: AppColors.primaryWhite,
                  backgroundImage: _selectedProfileImageBytes != null
                      ? MemoryImage(_selectedProfileImageBytes!)
                      : null,
                  child: _selectedProfileImageBytes == null
                      ? SvgPicture.asset("assets/image/auth/camera-svgrepo-com (3) 2.svg")
                      : null,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            _buildInputField('FullName', _nameController, 'Enter your full name'),
            SizedBox(height: 24.h),
            _buildInputField('Email', _emailController, 'Enter your email',
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Please enter your email';
                  if (!_isValidEmail(value)) return 'Enter a valid email address';
                  return null;
                }),
            SizedBox(height: 24.h),
            _buildInputField(
              'Phone Number',
              _phoneController,
              'Enter your phone number',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Phone number is required';
                if (!_isValidPhoneNumber(value)) return 'Invalid phone number';
                return null;
              },
            ),
            SizedBox(height: 24.h),
            _buildInputField('Company you manage fleets for', _nameController, 'Enter your company name'),
            SizedBox(height: 24.h),
            _buildInputField(
              'Password',
              _passwordController,
              'Enter your password',
              obscureText: !_isPasswordVisible,
              validator: (value) {
                if (value == null || value.isEmpty) return 'Password is required';
                if (!_isValidPassword(value)) {
                  return 'Password must be at least 8 characters, include one letter and one number';
                }
                return null;
              },
              suffixIcon: IconButton(
                icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
            ),
            SizedBox(height: 24.h),
            _buildInputField(
              'Confirm Password',
              _confirmPasswordController,
              'Enter your password again',
              obscureText: !_isConfirmPasswordVisible,
              validator: (value) {
                if (value == null || value.isEmpty) return 'Confirm password is required';
                if (value != _passwordController.text) return 'Passwords do not match';
                return null;
              },
              suffixIcon: IconButton(
                icon: Icon(_isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                  });
                },
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Upload Certifications (Optional)',
              style: AppTextStyles.mulishStyle.copyWith(
                color: AppColors.text82,
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () => _pickFile(isProfileImage: false),
              child: Container(
                width: double.infinity,
                height: 235.h,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                decoration: ShapeDecoration(
                  color: AppColors.primaryWhite,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: AppColors.borderLight),
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                ),
                child: _selectedFileBytes == null
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
                  _selectedFileBytes!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Why Register?\nStreamline fleet management with tools for tracking maintenance, monitoring driver performance, and ensuring compliance.',
              style: TextStyle(
                color: const Color(0xFFC4C4C4),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 32.h),
            CustomButton(
              title: _isSubmitting ? 'Submitting...' : 'Signup',
              onTap: _isSubmitting ? () {} : _handleSignup,
              width: double.infinity.w,
            ),
          ],
        ),
      ),
    );
  }


}
