import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Firebase Auth
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_text_styles.dart';
import '../../../../../widget/custom_button.dart';
import '../../../../../widget/reusable_text_form.dart';

class OwnerOperatorSignUp extends StatefulWidget {
  final VoidCallback onTapSignUp;
  const OwnerOperatorSignUp({Key? key, required this.onTapSignUp})
      : super(key: key);

  @override
  State<OwnerOperatorSignUp> createState() => _OwnerOperatorSignUpState();
}

class _OwnerOperatorSignUpState extends State<OwnerOperatorSignUp> {
  final _formKey = GlobalKey<FormState>();

  // Separate Controllers for each field
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dotNumberController = TextEditingController();
  final TextEditingController _mcNumberController = TextEditingController();
  final TextEditingController _nscController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  // Profile Image data
  Uint8List? _selectedProfileImageBytes;
  String? _selectedProfileImageName;
  String? _uploadedProfileImageUrl;

  // Driving License file data (Optional)
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

  /// Picks a file using FilePicker
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

  /// Uploads the selected profile image to Firebase Storage
  Future<void> _uploadProfileImageToFirebase() async {
    if (_selectedProfileImageBytes == null || _selectedProfileImageName == null)
      return;
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
        SnackBar(content: Text('Error uploading profile image: $e')),
      );
    }
  }

  /// Uploads the selected driving license file to Firebase Storage
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
      print('Driving License uploaded successfully: $fileUrl');
    } catch (e) {
      print('Error uploading driving license: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error uploading driving license: $e')),
      );
    }
  }

  /// Uploads user data to Firestore after creating a new user with Firebase Auth
  Future<void> _uploadUserData() async {
    setState(() {
      _isSubmitting = true;
    });
    try {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      // Create the user with Firebase Authentication
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final uid = userCredential.user!.uid;

      // Save additional user data in Firestore using the uid as document ID
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'full_name': _fullNameController.text.trim(),
        'business_name': _businessNameController.text.trim(),
        'email': email,
        'phone_number': _phoneController.text.trim(),
        'dot_number': _dotNumberController.text.trim(),
        'mc_number': _mcNumberController.text.trim(),
        'nsc_number': _nscController.text.trim(),
        'profile_image_url': _uploadedProfileImageUrl,
        'driving_license_url': _uploadedFileUrl,
        'isApprove': false,
        'account_type': 'OwnerOperator',
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Signup successful!')),
      );
      widget.onTapSignUp();
    } on FirebaseAuthException catch (e) {
      String errorMessage = e.message ?? 'Signup failed';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving data: $e')),
      );
    } finally {
      setState(() {
        _isSubmitting = false;
      });
    }
  }

  /// Handles the complete signup flow
  Future<void> _handleSignup() async {
    if (_formKey.currentState!.validate()) {
      await _uploadProfileImageToFirebase();
      await _uploadDrivingLicenseToFirebase();
      await _uploadUserData();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fix the errors in the form')),
      );
    }
  }

  /// Builds an input field with label and validation
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
                'Run your own trucking business?',
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
                'Join us to find the best opportunities and grow your business.',
                textAlign: TextAlign.center,
                style: AppTextStyles.mulishStyle.copyWith(
                  color: const Color(0xFF828282),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Center(
              child: GestureDetector(
                onTap: () => _pickFile(isProfileImage: true),
                child: CircleAvatar(
                  radius: 45.r,
                  backgroundColor: const Color(0xffF3F1F1),
                  // Display chosen image if available, otherwise show the SVG icon
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
            // Added Email Field UI from your previous screen
            _buildInputField(
              'Email',
              _emailController,
              'Enter your email address',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Please enter your email';
                if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
                  return 'Enter a valid email address';
                }
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
            _buildInputField('DOT Number (U.S.)', _dotNumberController, 'Enter your DOT Number (U.S.)'),
            SizedBox(height: 24.h),
            _buildInputField('MC Number (for interstate commerce in the U.S.)', _mcNumberController, 'Enter your MC Number'),
            SizedBox(height: 24.h),
            _buildInputField('NSC Number or Safety Fitness Certificate (Canada)', _nscController, 'Enter your NSC Number or Safety Fitness Certificate'),
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
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
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
                icon: Icon(
                  _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                  });
                },
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Upload your driving license (Optional)',
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
              'Why Verify?\nVerified owner-operators build trust and stand out to shippers and brokers.',
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
