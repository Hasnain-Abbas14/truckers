import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_text_styles.dart';
import '../../../../../widget/custom_button.dart';
import '../../../../../widget/reusable_text_form.dart';

class CarrierSignUp extends StatefulWidget {
  final VoidCallback onTapSignUp;
  const CarrierSignUp({Key? key, required this.onTapSignUp}) : super(key: key);

  @override
  State<CarrierSignUp> createState() => _CarrierSignUpState();
}

class _CarrierSignUpState extends State<CarrierSignUp> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for input fields
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessAddressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dotNumberController = TextEditingController();
  final TextEditingController _mcNumberController = TextEditingController();
  final TextEditingController _nscNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // Profile Image
  Uint8List? _selectedProfileImageBytes;
  String? _selectedProfileImageName;
  String? _uploadedProfileImageUrl;

  // Liability / Insurance File
  Uint8List? _selectedLiabilityFileBytes;
  String? _selectedLiabilityFileName;
  String? _uploadedLiabilityFileUrl;

  bool _isSubmitting = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  /// Basic validators
  bool _isValidEmail(String email) =>
      RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  bool _isValidPhoneNumber(String phoneNumber) =>
      RegExp(r'^\d+$').hasMatch(phoneNumber);
  bool _isValidPassword(String password) =>
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password);

  /// Picks a file using FilePicker.
  /// For profile image, only images are allowed.
  /// For liability file, you may allow any file type (adjust as needed).
  Future<void> _pickFile({required bool isProfileImage}) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: isProfileImage ? FileType.image : FileType.any,
        allowMultiple: false,
        withData: true,
      );

      if (result != null && result.files.single.bytes != null) {
        setState(() {
          if (isProfileImage) {
            _selectedProfileImageBytes = result.files.single.bytes;
            _selectedProfileImageName = result.files.single.name;
          } else {
            _selectedLiabilityFileBytes = result.files.single.bytes;
            _selectedLiabilityFileName = result.files.single.name;
          }
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking file: $e')),
      );
    }
  }

  /// Uploads the selected profile image to Firebase Storage.
  Future<void> _uploadProfileImage() async {
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
      print('Profile image uploaded: $fileUrl');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error uploading profile image: $e')),
      );
    }
  }

  /// Uploads the selected liability/insurance file to Firebase Storage.
  Future<void> _uploadLiabilityFile() async {
    if (_selectedLiabilityFileBytes == null || _selectedLiabilityFileName == null) return;
    try {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('user_liability')
          .child('liability_${DateTime.now().millisecondsSinceEpoch}_${_selectedLiabilityFileName}');
      final uploadTask = await storageRef.putData(_selectedLiabilityFileBytes!);
      final fileUrl = await uploadTask.ref.getDownloadURL();

      setState(() {
        _uploadedLiabilityFileUrl = fileUrl;
      });
      print('Liability file uploaded: $fileUrl');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error uploading liability file: $e')),
      );
    }
  }

  /// Handles the complete signup flow.
  /// It creates a new Firebase Auth user, uploads files if selected,
  /// and saves additional user details to Firestore.
  Future<void> _handleSignup() async {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fix the errors in the form')),
      );
      return;
    }
    setState(() {
      _isSubmitting = true;
    });
    try {
      // Create the user with Firebase Auth.
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      final uid = userCredential.user!.uid;

      // Upload files if selected.
      if (_selectedProfileImageBytes != null && _selectedProfileImageName != null) {
        await _uploadProfileImage();
      }
      if (_selectedLiabilityFileBytes != null && _selectedLiabilityFileName != null) {
        await _uploadLiabilityFile();
      }

      // Save user data to Firestore.
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'business_name': _businessNameController.text.trim(),
        'business_address': _businessAddressController.text.trim(),
        'email': _emailController.text.trim(),
        'phone_number': _phoneController.text.trim(),
        'dot_number': _dotNumberController.text.trim(),
        'mc_number': _mcNumberController.text.trim(),
        'nsc_number': _nscNumberController.text.trim(),
        // Note: Password is managed by Firebase Auth so it’s not stored here.
        'profile_image_url': _uploadedProfileImageUrl,
        'liability_file_url': _uploadedLiabilityFileUrl,
        'isApprove': false,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Signup successful!')),
      );
      widget.onTapSignUp();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error during signup: $e')),
      );
    } finally {
      setState(() {
        _isSubmitting = false;
      });
    }
  }

  /// Helper to build an input field with label and validation.
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
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header texts
            Center(
              child: Text(
                'Manage fleets and drivers?',
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
                'Sign up as a carrier to simplify your operations and stay organized.',
                textAlign: TextAlign.center,
                style: AppTextStyles.mulishStyle.copyWith(
                  color: const Color(0xFF828282),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 40.h),

            // Profile Image Picker (tap the avatar to pick an image)
            Center(
              child: GestureDetector(
                onTap: () => _pickFile(isProfileImage: true),
                child: CircleAvatar(
                  radius: 45.r,
                  backgroundColor: const Color(0xffF3F1F1),
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

            // Input Fields
            _buildInputField('Business Name', _businessNameController, 'Enter your legal business name'),
            SizedBox(height: 24.h),

            _buildInputField('Business Address', _businessAddressController, 'Enter your business address'),
            SizedBox(height: 24.h),

            _buildInputField(
              'Email',
              _emailController,
              'Enter your email address',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Email is required';
                if (!_isValidEmail(value)) return 'Enter a valid email';
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

            _buildInputField('DOT Number (U.S.)', _dotNumberController, 'Enter your DOT Number'),
            SizedBox(height: 24.h),

            _buildInputField('MC Number', _mcNumberController, 'Enter your MC Number'),
            SizedBox(height: 24.h),

            _buildInputField('NSC Number / Safety Fitness Certificate (Canada)', _nscNumberController, 'Enter your NSC Number or certificate'),
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

            // Liability/Insurance File Picker
            Text(
              'Upload Proof of Liability and Cargo Insurance (optional)',
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
                child: _selectedLiabilityFileBytes == null
                    ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.file_upload, size: 40, color: Color(0xffC4C4C4)),
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
                    : Center(child: Text(_selectedLiabilityFileName ?? 'File Selected')),
              ),
            ),
            SizedBox(height: 24.h),

            Text(
              'Why Verify?\nA verified carrier account shows shippers and brokers that you’re compliant, insured, and ready to take on loads.',
              style: TextStyle(
                color: const Color(0xFFC4C4C4),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 32.h),

            // Signup Button
            CustomButton(
              title: _isSubmitting ? 'Submitting...' : 'Signup',
              onTap: _isSubmitting ? () {} : _handleSignup,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
