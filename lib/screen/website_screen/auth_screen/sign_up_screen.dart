// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:truckerbs_website/themes/app_colors.dart';
// import 'package:truckerbs_website/themes/app_text_styles.dart';
// import 'package:truckerbs_website/widget/custom_button.dart';
// import 'package:truckerbs_website/widget/reusable_text_form.dart';
//
//
// class SignUpScreen extends StatelessWidget {
//   final VoidCallback onTap;
//   final VoidCallback onTapSignUp;
//   const SignUpScreen({super.key, required this.onTap, required this.onTapSignUp});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 715.w,
//         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25).w,
//         decoration: const BoxDecoration(
//           color: AppColors.primaryWhite,
//           boxShadow: [
//             BoxShadow(
//               color: Color(0x14000000),
//               blurRadius: 40,
//               offset: Offset(0, 4),
//               spreadRadius: 0,
//             )
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Center(
//               child: Text(
//                   'Signup',
//                   style: AppTextStyles.mulishStyle.copyWith( color:AppColors.primaryBlack,
//                     fontSize: 56.sp,
//                     fontWeight: FontWeight.w600,)
//               ),
//             ),
//             SizedBox(height: 10.h,),
//             Center(
//               child: Text(
//                   'Add your information to  register',
//                   textAlign: TextAlign.justify,
//                   style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF828282),
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w400,)
//               ),
//             ),
//             SizedBox(height: 50.h,),
//             Text(
//                 'Name',
//                 style: AppTextStyles.mulishStyle.copyWith( color:AppColors.text82,
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w400,)
//             ),
//             SizedBox(height: 10.h,),
//             const ReusableTextForm(
//               hintText: 'Enter your full name',
//               focusBorderColor: AppColors.primaryColor,
//             ),
//             SizedBox(height: 24.h,),
//
//             Text(
//                 'Email',
//                 style: AppTextStyles.mulishStyle.copyWith( color:AppColors.text82,
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w400,)
//             ),
//             SizedBox(height: 10.h,),
//             const ReusableTextForm(
//               hintText: 'Enter your email',
//               focusBorderColor: AppColors.primaryColor,
//             ),
//             SizedBox(height: 24.h,),
//
//             Text(
//                 'Phone Number',
//                 style: AppTextStyles.mulishStyle.copyWith( color:AppColors.text82,
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w400,)
//             ),
//             SizedBox(height: 10.h,),
//             const ReusableTextForm(
//               hintText: 'Enter your phone number',
//               focusBorderColor: AppColors.primaryColor,
//             ),
//             SizedBox(height: 24.h,),
//
//
//             Text(
//                 'Password',
//                 style: AppTextStyles.mulishStyle.copyWith( color:AppColors.text82,
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w400,)
//             ),
//             SizedBox(height: 10.h,),
//             const ReusableTextForm(
//               hintText: 'Enter your password',
//               focusBorderColor: AppColors.primaryColor,
//               suffixIcon: Icon(Icons.visibility_off_outlined,color: Color(0xffA2A2A2),),
//             ),
//             SizedBox(height: 24.h,),
//
//
//             Text(
//                 'Confirm Password',
//                 style: AppTextStyles.mulishStyle.copyWith( color:AppColors.text82,
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w400,)
//             ),
//             SizedBox(height: 10.h,),
//             const ReusableTextForm(
//               hintText: 'Enter your password again',
//               focusBorderColor: AppColors.primaryColor,
//               suffixIcon: Icon(Icons.visibility_off_outlined,color: Color(0xffA2A2A2),),
//             ),
//             SizedBox(height: 24.h,),
//
//             Text(
//                 'Upload Driving Liscense',
//                 style: AppTextStyles.mulishStyle.copyWith( color:AppColors.text82,
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w400,)
//             ),
//             SizedBox(height: 10.h,),
//
//             Container(
//               width:double.infinity,
//               height: 235.h,
//               padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20).w,
//               decoration: ShapeDecoration(
//                 color: AppColors.primaryWhite,
//                 shape: RoundedRectangleBorder(
//                   side: const BorderSide(width: 1, color:AppColors.borderLight),
//                   borderRadius: BorderRadius.circular(8).w,
//                 ),
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.camera_alt_outlined,color: Color(0xffC4C4C4),size: 40,),
//                   Text(
//                     'Upload File',
//                     style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFFC4C4C4),
//                       fontSize: 20.sp,
//                       fontWeight: FontWeight.w400,)
//                   ),
//                 ],
//               ),
//             ),
//
//             SizedBox(height: 32.h,),
//           CustomButton(title: 'Signup', onTap:onTapSignUp,  width: double.infinity.w,),
//             SizedBox(height: 32.h,),
//             GestureDetector(
//               onTap: onTap,
//               child: Center(
//                 child: Text.rich(
//                   TextSpan(
//                     children: [
//                       TextSpan(
//                           text: 'Already have an account?  ',
//                           style:AppTextStyles.mulishStyle.copyWith( color: const Color(0xFFC4C4C4),
//                             fontSize: 24.sp,
//                             fontWeight: FontWeight.w400,)
//                       ),
//                       TextSpan(
//                           text: 'Login',
//                           style: AppTextStyles.mulishStyle.copyWith(  color:AppColors.primaryColor,
//                             fontSize: 24.sp,
//                             fontWeight: FontWeight.w700,)
//                       ),
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             SizedBox(height: 62.h,),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Expanded(child: Divider(thickness: 1,height: 1,color: Color(0xffD0D0D0),)),
//                 SizedBox(width: 10.w,),
//                 Text(
//                     'OR',
//                     textAlign: TextAlign.center,
//                     style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFFC4C4C4),
//                       fontSize: 24.sp,
//                       fontWeight: FontWeight.w400,)
//                 ),
//                 SizedBox(width: 10.w,),
//                 const Expanded(child: Divider(thickness: 1,height: 1,color: Color(0xffD0D0D0),)),
//               ],
//             ),
//
//             SizedBox(height: 32.h,),
//             Container(
//               height: 70.h,    width:double.infinity.w,
//               padding: const EdgeInsets.symmetric(horizontal: 40,).w,
//               decoration: ShapeDecoration(
//                 shape: RoundedRectangleBorder(
//                   side: const BorderSide(width: 1, color: Color(0xFFD2D2D2)),
//                   borderRadius: BorderRadius.circular(8).w,
//                 ),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                       height: 25.h,width: 25.w,
//                       "assets/website/auth_screen/google-color-svgrepo-com (1) 1.png"),
//                   SizedBox(width: 16.w),
//                   Text(
//                       'Continue with Google',
//                       style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF634747),
//                         fontSize: 24.sp,
//                         fontWeight: FontWeight.w400,)
//                   ),
//                 ],
//               ),
//             ),
//
//             SizedBox(height: 16.h,),
//             Container(
//               height: 70.h,
//               width:double.infinity.w,
//               padding: const EdgeInsets.symmetric(horizontal: 40,).w,
//               decoration: ShapeDecoration(
//                 shape: RoundedRectangleBorder(
//                   side: const BorderSide(width: 1, color: Color(0xFFD2D2D2)),
//                   borderRadius: BorderRadius.circular(8).w,
//                 ),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                       height: 25.h,width: 25.w,
//                       "assets/website/auth_screen/apple-173-svgrepo-com (3) 1.png"),
//                   SizedBox(width: 16.w),
//                   Text(
//                       'Continue with Apple',
//                       style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF634747),
//                         fontSize: 24.sp,
//                         fontWeight: FontWeight.w400,)
//                   ),
//                 ],
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onTap;
  final VoidCallback onTapSignUp;

  const SignUpScreen({Key? key, required this.onTap, required this.onTapSignUp})
      : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // Profile Image
  Uint8List? _selectedProfileImageBytes;
  String? _selectedProfileImageName;
  String? _uploadedProfileImageUrl;

  // Driving License
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

  /// Validates password (min 8 chars, at least one letter and one number)
  bool _isValidPassword(String password) {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password);
  }

  /// Picks a file using FilePicker for Flutter Web
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

  /// Checks if email already exists in Firestore
  Future<bool> _isEmailAlreadyRegistered(String email) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();

    return querySnapshot.docs.isNotEmpty;
  }

  /// Uploads the selected profile image to Firebase Storage
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
        SnackBar(content: Text('Error uploading profile image: $e')),
      );
    }
  }

  /// Uploads the selected driving license to Firebase Storage
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

  /// Uploads user data to Firebase Firestore
  Future<void> _uploadUserData() async {
    setState(() {
      _isSubmitting = true;
    });

    try {
      final email = _emailController.text.trim();

      // Check if email already exists
      if (await _isEmailAlreadyRegistered(email)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User email already exists!')),
        );
        setState(() {
          _isSubmitting = false;
        });
        return;
      }

      // Add user to Firestore
      final usersCollection = FirebaseFirestore.instance.collection('users');

      await usersCollection.add({
        'name': _nameController.text.trim(),
        'email': email,
        'phone_number': _phoneController.text.trim(),
        'password': _passwordController.text.trim(), // Use hashed passwords in production
        'profile_image_url': _uploadedProfileImageUrl,
        'driving_license_url': _uploadedFileUrl,
        'isApprove': false,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Signup successful!')),
      );

      widget.onTapSignUp();
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
      // Only upload the files after validation passes
      await _uploadProfileImageToFirebase();
      await _uploadDrivingLicenseToFirebase();
      await _uploadUserData();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fix the errors in the form')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 715.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          boxShadow: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 40,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView( // Added to prevent overflow
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Signup',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: AppColors.primaryBlack,
                      fontSize: 56.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    'Add your information to register',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 50.h),

                // Name Field
                _buildInputField('Name', _nameController, 'Enter your full name'),
                SizedBox(height: 24.h),

                // Email Field
                _buildInputField(
                  'Email',
                  _emailController,
                  'Enter your email',
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Email is required';
                    if (!_isValidEmail(value)) return 'Invalid email format';
                    return null;
                  },
                ),
                SizedBox(height: 24.h),

                // Phone Number Field
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

                // Password Field
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

                // Confirm Password Field
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
                      _isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                      });
                    },
                  ),
                ),
                SizedBox(height: 24.h),

                // Upload Profile Image
                Text(
                  'Upload Profile Image',
                  style: AppTextStyles.mulishStyle.copyWith(
                    color: AppColors.text82,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () => _pickFile(isProfileImage: true),
                  child: Container(
                    width: double.infinity,
                    height: 235.h,
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                    decoration: ShapeDecoration(
                      color: AppColors.primaryWhite,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: AppColors.borderLight,
                        ),
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                    ),
                    child: _selectedProfileImageBytes == null
                        ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.camera_alt_outlined,
                          color: Color(0xffC4C4C4),
                          size: 40,
                        ),
                        Text(
                          'Upload Profile Image',
                          style: AppTextStyles.mulishStyle.copyWith(
                            color: const Color(0xFFC4C4C4),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                        : Image.memory(
                      _selectedProfileImageBytes!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),

                // Upload Driving License
                Text(
                  'Upload Driving License',
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
                        side: const BorderSide(
                          width: 1,
                          color: AppColors.borderLight,
                        ),
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
                          'Upload Driving License',
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
                SizedBox(height: 32.h),

                // Signup Button
                CustomButton(
                  title: _isSubmitting ? 'Submitting...' : 'Signup',
                  onTap: _isSubmitting
                      ? () {} // No-op when submitting
                      : () {
                    _handleSignup();
                  },
                  width: double.infinity.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds an input field with validation
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
}

// class SignUpScreen extends StatefulWidget {
//   final VoidCallback onTap;
//   final VoidCallback onTapSignUp;
//
//   const SignUpScreen({Key? key, required this.onTap, required this.onTapSignUp})
//       : super(key: key);
//
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();
//
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();
//
//   Uint8List? _selectedFileBytes;
//   String? _selectedFileName;
//   String? _uploadedFileUrl;
//   bool _isSubmitting = false;
//
//   bool _isPasswordVisible = false;
//   bool _isConfirmPasswordVisible = false;
//
//   /// Validates email format
//   bool _isValidEmail(String email) {
//     return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
//   }
//
//   /// Validates phone number (only digits allowed)
//   bool _isValidPhoneNumber(String phoneNumber) {
//     return RegExp(r'^\d+$').hasMatch(phoneNumber);
//   }
//
//   /// Validates password (min 8 chars, at least one letter and one number)
//   bool _isValidPassword(String password) {
//     return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password);
//   }
//
//   /// Picks a file using FilePicker for Flutter Web
//   Future<void> _pickFile() async {
//     try {
//       final result = await FilePicker.platform.pickFiles(
//         type: FileType.image,
//         allowMultiple: false,
//         withData: true,
//       );
//
//       if (result != null && result.files.single.bytes != null) {
//         setState(() {
//           _selectedFileBytes = result.files.single.bytes;
//           _selectedFileName = result.files.single.name;
//         });
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error picking file: $e')),
//       );
//     }
//   }
//
//   /// Checks if email already exists in Firestore
//   Future<bool> _isEmailAlreadyRegistered(String email) async {
//     final querySnapshot = await FirebaseFirestore.instance
//         .collection('users')
//         .where('email', isEqualTo: email)
//         .get();
//
//     return querySnapshot.docs.isNotEmpty;
//   }
//
//   /// Uploads the selected file to Firebase Storage
//   Future<void> _uploadFileToFirebase() async {
//     if (_selectedFileBytes == null || _selectedFileName == null) return;
//
//     try {
//       final storageRef = FirebaseStorage.instance
//           .ref()
//           .child('user_uploads')
//           .child('driving_license_${DateTime.now().millisecondsSinceEpoch}_${_selectedFileName}');
//
//       final uploadTask = await storageRef.putData(_selectedFileBytes!);
//       final fileUrl = await uploadTask.ref.getDownloadURL();
//
//       setState(() {
//         _uploadedFileUrl = fileUrl;
//       });
//
//       print('File uploaded successfully: $fileUrl');
//     } catch (e) {
//       print('Error uploading file: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error uploading file: $e')),
//       );
//     }
//   }
//
//   /// Uploads user data to Firebase Firestore
//   Future<void> _uploadUserData() async {
//     setState(() {
//       _isSubmitting = true;
//     });
//
//     try {
//       final email = _emailController.text.trim();
//
//       // Check if email already exists
//       if (await _isEmailAlreadyRegistered(email)) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('User email already exists!')),
//         );
//         setState(() {
//           _isSubmitting = false;
//         });
//         return;
//       }
//
//       // Add user to Firestore
//       final usersCollection = FirebaseFirestore.instance.collection('users');
//
//       await usersCollection.add({
//         'name': _nameController.text.trim(),
//         'email': email,
//         'phone_number': _phoneController.text.trim(),
//         'password': _passwordController.text.trim(), // Use hashed passwords in production
//         'driving_license_url': _uploadedFileUrl,
//       });
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Signup successful!')),
//       );
//
//       widget.onTapSignUp();
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error saving data: $e')),
//       );
//     } finally {
//       setState(() {
//         _isSubmitting = false;
//       });
//     }
//   }
//
//   /// Handles the complete signup flow
//   Future<void> _handleSignup() async {
//     if (_formKey.currentState!.validate()) {
//       // Only upload the file after validation passes
//       await _uploadFileToFirebase();
//       await _uploadUserData();
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please fix the errors in the form')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 715.w,
//         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
//         decoration: BoxDecoration(
//           color: AppColors.primaryWhite,
//           boxShadow: const [
//             BoxShadow(
//               color: Color(0x14000000),
//               blurRadius: 40,
//               offset: Offset(0, 4),
//               spreadRadius: 0,
//             ),
//           ],
//         ),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Text(
//                   'Signup',
//                   style: AppTextStyles.mulishStyle.copyWith(
//                     color: AppColors.primaryBlack,
//                     fontSize: 56.sp,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Center(
//                 child: Text(
//                   'Add your information to register',
//                   textAlign: TextAlign.center,
//                   style: AppTextStyles.mulishStyle.copyWith(
//                     color: const Color(0xFF828282),
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50.h),
//               _buildInputField('Name', _nameController, 'Enter your full name'),
//               SizedBox(height: 24.h),
//               _buildInputField(
//                 'Email',
//                 _emailController,
//                 'Enter your email',
//                 validator: (value) {
//                   if (value == null || value.isEmpty) return 'Email is required';
//                   if (!_isValidEmail(value)) return 'Invalid email format';
//                   return null;
//                 },
//               ),
//               SizedBox(height: 24.h),
//               _buildInputField(
//                 'Phone Number',
//                 _phoneController,
//                 'Enter your phone number',
//                 validator: (value) {
//                   if (value == null || value.isEmpty) return 'Phone number is required';
//                   if (!_isValidPhoneNumber(value)) return 'Invalid phone number';
//                   return null;
//                 },
//               ),
//               SizedBox(height: 24.h),
//               _buildInputField(
//                 'Password',
//                 _passwordController,
//                 'Enter your password',
//                 obscureText: !_isPasswordVisible,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) return 'Password is required';
//                   if (!_isValidPassword(value)) {
//                     return 'Password must be at least 8 characters, include one letter and one number';
//                   }
//                   return null;
//                 },
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//               SizedBox(height: 24.h),
//               _buildInputField(
//                 'Confirm Password',
//                 _confirmPasswordController,
//                 'Enter your password again',
//                 obscureText: !_isConfirmPasswordVisible,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) return 'Confirm password is required';
//                   if (value != _passwordController.text) return 'Passwords do not match';
//                   return null;
//                 },
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isConfirmPasswordVisible
//                         ? Icons.visibility
//                         : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//               SizedBox(height: 24.h),
//               Text(
//                 'Upload Driving License',
//                 style: AppTextStyles.mulishStyle.copyWith(
//                   color: AppColors.text82,
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               GestureDetector(
//                 onTap: _pickFile,
//                 child: Container(
//                   width: double.infinity,
//                   height: 235.h,
//                   padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
//                   decoration: ShapeDecoration(
//                     color: AppColors.primaryWhite,
//                     shape: RoundedRectangleBorder(
//                       side: const BorderSide(
//                         width: 1,
//                         color: AppColors.borderLight,
//                       ),
//                       borderRadius: BorderRadius.circular(8.w),
//                     ),
//                   ),
//                   child: _selectedFileBytes == null
//                       ? Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         Icons.camera_alt_outlined,
//                         color: Color(0xffC4C4C4),
//                         size: 40,
//                       ),
//                       Text(
//                         'Upload File',
//                         style: AppTextStyles.mulishStyle.copyWith(
//                           color: const Color(0xFFC4C4C4),
//                           fontSize: 20.sp,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   )
//                       : Image.memory(
//                     _selectedFileBytes!,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 32.h),
//               CustomButton(
//                 title: _isSubmitting ? 'Submitting...' : 'Signup',
//                 onTap: _isSubmitting
//                     ? () {} // No-op when submitting
//                     : () {
//                   _handleSignup();
//                 },
//                 width: double.infinity.w,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   /// Builds an input field with validation
//   Widget _buildInputField(
//       String label,
//       TextEditingController controller,
//       String hintText, {
//         bool obscureText = false,
//         String? Function(String?)? validator,
//         Widget? suffixIcon,
//       }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: AppTextStyles.mulishStyle.copyWith(
//             color: AppColors.text82,
//             fontSize: 24.sp,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         SizedBox(height: 10.h),
//         ReusableTextForm(
//           controller: controller,
//           hintText: hintText,
//           focusBorderColor: AppColors.primaryColor,
//           obscureText: obscureText,
//           validator: validator,
//           suffixIcon: suffixIcon,
//         ),
//       ],
//     );
//   }
// }



