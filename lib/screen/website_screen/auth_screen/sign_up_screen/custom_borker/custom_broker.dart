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

class CustomBrokerSignUp extends StatefulWidget {
  final VoidCallback onTapSignUp;
  const CustomBrokerSignUp({Key? key, required this.onTapSignUp})
      : super(key: key);

  @override
  State<CustomBrokerSignUp> createState() => _CustomBrokerSignUpState();
}

class _CustomBrokerSignUpState extends State<CustomBrokerSignUp> {
  final _formKey = GlobalKey<FormState>();

  // Separate controllers for each field.
  final TextEditingController _nameController = TextEditingController(); // Broker's name
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();

  // File upload variables.
  // Profile image (e.g. broker's portrait)
  Uint8List? _selectedProfileImageBytes;
  String? _selectedProfileImageName;
  String? _uploadedProfileImageUrl;

  // Extra file (e.g. certification or document)
  Uint8List? _selectedFileBytes;
  String? _selectedFileName;
  String? _uploadedFileUrl;

  bool _isSubmitting = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  /// Validates email format.
  bool _isValidEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  /// Validates phone number (only digits allowed).
  bool _isValidPhoneNumber(String phoneNumber) {
    return RegExp(r'^\d+$').hasMatch(phoneNumber);
  }

  /// Validates password: minimum 8 characters, at least one letter and one number.
  bool _isValidPassword(String password) {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password);
  }

  /// Picks a file using FilePicker.
  ///
  /// If [isProfileImage] is true, the file is used as the profile image; otherwise it is used as the extra file.
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
          SnackBar(content: Text('Error picking file: $e')));
    }
  }

  /// Uploads the selected profile image to Firebase Storage.
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
      print('Profile image uploaded successfully: $fileUrl');
    } catch (e) {
      print('Error uploading profile image: $e');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error uploading profile image: $e')));
    }
  }

  /// Uploads the extra file (e.g. certification) to Firebase Storage.
  Future<void> _uploadFileToFirebase() async {
    if (_selectedFileBytes == null || _selectedFileName == null) return;
    try {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('user_uploads')
          .child('extra_${DateTime.now().millisecondsSinceEpoch}_${_selectedFileName}');
      final uploadTask = await storageRef.putData(_selectedFileBytes!);
      final fileUrl = await uploadTask.ref.getDownloadURL();
      setState(() {
        _uploadedFileUrl = fileUrl;
      });
      print('Extra file uploaded successfully: $fileUrl');
    } catch (e) {
      print('Error uploading extra file: $e');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error uploading file: $e')));
    }
  }

  /// Checks if an email is already registered in Firestore.
  Future<bool> _isEmailAlreadyRegistered(String email) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    return querySnapshot.docs.isNotEmpty;
  }

  /// Creates a new user via Firebase Auth and then uploads additional broker details to Firestore.
  Future<void> _uploadUserData() async {
    setState(() {
      _isSubmitting = true;
    });
    try {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      // Check if email exists.
      if (await _isEmailAlreadyRegistered(email)) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('User email already exists!')));
        setState(() {
          _isSubmitting = false;
        });
        return;
      }

      // Create the user using Firebase Authentication.
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final uid = userCredential.user!.uid;

      // Save additional broker data in Firestore.
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'name': _nameController.text.trim(),
        'business_name': _businessNameController.text.trim(),
        'email': email,
        'phone_number': _phoneController.text.trim(),
        'profile_image_url': _uploadedProfileImageUrl,
        'extra_file_url': _uploadedFileUrl,
        'account_type': 'CustomBroker',
        'isApprove': false,
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

  /// Handles the complete signup flow: validate, upload files, create user, save data.
  Future<void> _handleSignup() async {
    if (_formKey.currentState!.validate()) {
      await _uploadProfileImageToFirebase();
      await _uploadFileToFirebase();
      await _uploadUserData();
      widget.onTapSignUp();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please fix the errors in the form')));
    }
  }

  /// Helper widget to build an input field with label and validation.
  Widget _buildInputField(String label, TextEditingController controller, String hintText,
      {bool obscureText = false,
        String? Function(String?)? validator,
        Widget? suffixIcon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: AppTextStyles.mulishStyle.copyWith(
                color: AppColors.text82, fontSize: 24.sp, fontWeight: FontWeight.w400)),
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
                'Create a Custom Broker Account',
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
                'Sign up to connect shippers and carriers effectively.',
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
            _buildInputField('Full Name', _nameController, 'Enter your full name'),
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
            // Extra File Picker for additional documents (optional)
            Text(
              'Upload Certifications (Optional)',
              style: AppTextStyles.mulishStyle.copyWith(
                  color: AppColors.text82, fontSize: 24.sp, fontWeight: FontWeight.w400),
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
                          fontWeight: FontWeight.w400),
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
              'Why Register?\nConnect shippers with carriers through expert customs clearance and logistics support.',
              style: TextStyle(
                  color: const Color(0xFFC4C4C4),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
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
