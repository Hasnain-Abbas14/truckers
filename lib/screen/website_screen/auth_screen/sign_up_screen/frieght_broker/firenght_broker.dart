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

class FrieghtBrokerSignUp extends StatefulWidget {
  final VoidCallback onTapSignUp;
  const FrieghtBrokerSignUp({super.key, required this.onTapSignUp});

  @override
  State<FrieghtBrokerSignUp> createState() => _FrieghtBrokerSignUpState();
}

class _FrieghtBrokerSignUpState extends State<FrieghtBrokerSignUp> {
  final _formKey = GlobalKey<FormState>();

  // Use separate controllers for each field for clarity:
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _mcNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // Profile image data (for certifications)
  Uint8List? _selectedProfileImageBytes;
  String? _selectedProfileImageName;
  String? _uploadedProfileImageUrl;

  // Additional file data (for insurance documents, etc.)
  Uint8List? _selectedFileBytes;
  String? _selectedFileName;
  String? _uploadedFileUrl;

  bool _isSubmitting = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  /// Validates email format
  bool _isValidEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  /// Validates phone number (only digits allowed)
  bool _isValidPhoneNumber(String phoneNumber) {
    return RegExp(r'^\d+$').hasMatch(phoneNumber);
  }

  /// Validates password (min 8 characters, at least one letter and one number)
  bool _isValidPassword(String password) {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password);
  }

  /// Picks a file using FilePicker.
  /// When isProfileImage is true, the file is used for the profile image;
  /// otherwise it is used as an extra file.
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
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error picking file: $e')));
    }
  }

  /// Uploads the profile image (certification image) to Firebase Storage
  Future<void> _uploadProfileImageToFirebase() async {
    if (_selectedProfileImageBytes == null || _selectedProfileImageName == null) return;
    try {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('user_profiles')
          .child('profile_${DateTime.now().millisecondsSinceEpoch}_${_selectedProfileImageName}');
      final uploadTask = await storageRef.putData(_selectedProfileImageBytes!);
      final fileUrl = await uploadTask.ref.getDownloadURL();
      setState(() {
        _uploadedProfileImageUrl = fileUrl;
      });
      print('Profile Image uploaded successfully: $fileUrl');
    } catch (e) {
      print('Error uploading profile image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error uploading profile image: $e')));
    }
  }

  /// Uploads the additional file (for example, insurance document) to Firebase Storage.
  Future<void> _uploadDrivingLicenseToFirebase() async {
    if (_selectedFileBytes == null || _selectedFileName == null) return;
    try {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('user_uploads')
          .child('driving_license_${DateTime.now().millisecondsSinceEpoch}_${_selectedFileName}');
      final uploadTask = await storageRef.putData(_selectedFileBytes!);
      final fileUrl = await uploadTask.ref.getDownloadURL();
      setState(() {
        _uploadedFileUrl = fileUrl;
      });
      print('Additional file uploaded successfully: $fileUrl');
    } catch (e) {
      print('Error uploading additional file: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error uploading additional file: $e')));
    }
  }

  /// Creates a new user with Firebase Authentication and saves the freight broker data to Firestore.
  Future<void> _uploadUserData() async {
    setState(() {
      _isSubmitting = true;
    });
    try {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      // Create the user with Firebase Auth
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final uid = userCredential.user!.uid;

      // Save additional freight broker data in Firestore, using UID as document ID.
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'full_name': _fullNameController.text.trim(),
        'business_name': _businessNameController.text.trim(),
        'mc_number': _mcNumberController.text.trim(),
        'phone_number': _phoneController.text.trim(),
        'email': email,
        'profile_image_url': _uploadedProfileImageUrl,
        'additional_file_url': _uploadedFileUrl,
        'isApprove': false,
        'account_type': 'FreightBroker',
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

  /// Handles the complete signup flow: validating the form, uploading files and saving user data.
  Future<void> _handleSignup() async {
    if (_formKey.currentState!.validate()) {
      await _uploadProfileImageToFirebase();
      await _uploadDrivingLicenseToFirebase();
      await _uploadUserData();
      widget.onTapSignUp();
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Please fix the errors in the form')));
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
      child: SingleChildScrollView( // Prevents overflow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Connect shippers and carriers seamlessly',
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
                'Sign up to grow your network and manage logistics more efficiently.',
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
            _buildInputField('FullName', _fullNameController, 'Enter your full name'),
            SizedBox(height: 24.h),
            _buildInputField('Business Name', _businessNameController, 'Enter your business name'),
            SizedBox(height: 24.h),
            _buildInputField(
              'Email',
              _emailController,
              'Enter your email',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Please enter your email';
                if (!_isValidEmail(value)) return 'Enter a valid email address';
                return null;
              },
            ),
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
            _buildInputField('MC Number (required for U.S. brokers)', _mcNumberController, 'Enter your MC Number'),
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
            // Certification File Picker – note the fix: we call _pickFile(isProfileImage: false)
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
              'Why Verify?\nA verified broker profile shows shippers and carriers that you’re experienced and trustworthy.',
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
