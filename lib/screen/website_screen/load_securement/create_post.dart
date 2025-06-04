import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:html' as html;

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_footer.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  // Add form key for validation
  final _formKey = GlobalKey<FormState>();

  // controllers for every TextFormField
  final _lengthController = TextEditingController();
  final _heightController = TextEditingController();
  final _locationController = TextEditingController();
  final _hashtagsController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _safetyTipsController = TextEditingController();
  final _weightController = TextEditingController();

  // counters
  int _strapsCount = 0;
  int _chainsCount = 0;
  int _tarpsCount = 0;
  int _cornersCount = 0;
  html.File? _file;

  // picked file
  File? _pickedFile;
  String? _uploadedFileUrl;
  String? _selectedFileName;
  bool _isLoading = false;
  UploadTask? _uploadTask;
  double _progress = 0;
  String? _downloadUrl;
  // Material name and tools selection
  String? _selectedMaterial;
  String? _selectedWeightUnit;
  List<String> _selectedTools = [];

  // Lists for dropdowns
  final List<String> _materials = [
    'Steel',
    'Wood',
    'Concrete',
    'Machinery',
    'Electronics',
    'Furniture',
    'Food Products',
    'Chemicals',
    'Other'
  ];

  final List<String> _weightUnits = ['Kgs', 'Lbs', 'Tons'];

  final List<String> _tools = [
    'Ratchet Straps',
    'Chain Binders',
    'Load Bars',
    'Edge Protectors',
    'Corner Protectors',
    'Dunnage Bags',
    'Blocking',
    'Bracing',
    'Shoring',
    'Other'
  ];

  @override
  void dispose() {
    _lengthController.dispose();
    _heightController.dispose();
    _locationController.dispose();
    _hashtagsController.dispose();
    _descriptionController.dispose();
    _safetyTipsController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  // Future<void> _pickFile() async {
  //   try {
  //     final result = await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'mp4', 'mov'],
  //       allowMultiple: false,
  //     );
  //
  //     if (result != null && result.files.isNotEmpty) {
  //       final file = result.files.first;
  //
  //       if (file.path == null) {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('Could not get file path')),
  //         );
  //         return;
  //       }
  //
  //       // Check file size (limit to 10MB)
  //       if (file.size > 10 * 1024 * 1024) {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('File size should be less than 10MB')),
  //         );
  //         return;
  //       }
  //
  //       setState(() {
  //         _pickedFile = File(file.path!);
  //         _selectedFileName = file.name;
  //       });
  //     }
  //   } on PlatformException catch (e) {
  //     String errorMessage = 'Error picking file';
  //     if (e.code == 'user_canceled') {
  //       errorMessage = 'File picking was canceled';
  //     } else if (e.code == 'permission_denied') {
  //       errorMessage = 'Permission to access files was denied';
  //     }
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text(errorMessage)),
  //     );
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Error picking file: $e')),
  //     );
  //   }
  // }



  void _pickImage() {
    final uploadInput = html.FileUploadInputElement()
      ..accept = 'image/*'
      ..multiple = false;
    uploadInput.click();
    uploadInput.onChange.listen((_) {
      final files = uploadInput.files;
      if (files != null && files.isNotEmpty) {
        setState(() {
          _file = files.first;
        });
      }
    });
  }


  Future<String?> _uploadToFirebase() async {
    // If no file is selected, just return null
    if (_file == null) return null;

    // Create a unique filename
    final fileName = '${DateTime.now().millisecondsSinceEpoch}_${_file!.name}';
    final storageRef = FirebaseStorage.instance.ref('uploads/$fileName');

    // Start upload
    _uploadTask = storageRef.putBlob(_file!);

    // Listen to progress events
    _uploadTask!.snapshotEvents.listen((event) {
      final bytesTransferred = event.bytesTransferred;
      final totalBytes = event.totalBytes;
      setState(() {
        _progress = bytesTransferred / totalBytes;
      });
    });

    // Wait for the upload to complete
    await _uploadTask;

    // Get the download URL
    final url = await storageRef.getDownloadURL();

    // Save URL to Firestore


    // Update state and return the URL
    setState(() {
      _downloadUrl = url;
    });
    return url;
  }





  String _getMimeType(String fileName) {
    final extension = fileName.toLowerCase().split('.').last;
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'png':
        return 'image/png';
      case 'gif':
        return 'image/gif';
      case 'mp4':
        return 'video/mp4';
      case 'mov':
        return 'video/quicktime';
      default:
        return 'application/octet-stream';
    }
  }

  Future<void> _saveToFirebase() async {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required fields')),
      );
      return;
    }

    if (_selectedMaterial == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a material')),
      );
      return;
    }

    if (_selectedTools.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select at least one tool')),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      String? fileUrl;
      // Only upload file if one was selected
      if (_file != null) {
        fileUrl = await _uploadToFirebase();
        if (fileUrl == null) {
          throw Exception('Failed to upload file');
        }
      }

      final post = {
        'fileUrl': fileUrl ?? "",
        'straps': _strapsCount,
        'chains': _chainsCount,
        'tarps': _tarpsCount,
        'corners': _cornersCount,
        'length': _lengthController.text.trim(),
        'height': _heightController.text.trim(),
        'location': _locationController.text.trim(),
        'hashtags': _hashtagsController.text.trim(),
        'description': _descriptionController.text.trim(),
        'safetyTips': _safetyTipsController.text.trim(),
        'material': _selectedMaterial,
        'weight': _weightController.text.trim(),
        'weightUnit': _selectedWeightUnit ?? 'Kgs',
        'tools': _selectedTools,
        'timestamp': FieldValue.serverTimestamp(),
        'likes': 0,
        'comments': [],
      };

      await FirebaseFirestore.instance.collection('posts').add(post);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Post created successfully!')),
      );

      // Clear form
      _formKey.currentState!.reset();
      setState(() {
        _pickedFile = null;
        _selectedFileName = null;
        _strapsCount = 0;
        _chainsCount = 0;
        _tarpsCount = 0;
        _cornersCount = 0;
        _selectedMaterial = null;
        _selectedWeightUnit = 'Kgs';
        _selectedTools = [];
        _weightController.clear();
      });
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error creating post: $e')),
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ─── header image & texts ───
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.97.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 1.7,
                  image: AssetImage(
                    "assets/website/tbs_tv_screens/Group 31598.png",
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Load Securement\nShare Your Cargo Experience',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bebasStyle.copyWith(
                      color: Colors.white,
                      fontSize: 100.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Share Your Cargo Stories and Keep Fellow Drivers Informed',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Colors.white,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Have you faced a challenging situation with your cargo? '
                    'Share your experience, photos, or videos to help others '
                    'learn and stay secure on the road.',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            // ─── form card ───
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F989898),
                    blurRadius: 15,
                    offset: Offset(0, 4),
                    spreadRadius: 4,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ─── Title + Upload Button ───
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Create postt',
                          style: AppTextStyles.bebasStyle.copyWith(
                            color: const Color(0xFF333333),
                            fontSize: 76.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.58,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Video / Photo File (Optional)',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF828282),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          GestureDetector(
                            onTap: _pickImage,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: const Color(0x19FF0000),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.attach_file_outlined,
                                    color: const Color(0xFF262626),
                                    size: 25.r,
                                  ),
                                  SizedBox(width: 10.w),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        _file == null ? 'Upload File (Optional)' : 'File Selected',
                                        style: AppTextStyles.mulishStyle.copyWith(
                                          color: const Color(0xFF262626),
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.32,
                                        ),
                                      ),
                                      if (_selectedFileName != null)
                                        SizedBox(
                                          width: 200.w,
                                          child: Text(
                                            _selectedFileName!,
                                            style: AppTextStyles.mulishStyle.copyWith(
                                              color: const Color(0xFF828282),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Author + Public ───
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.transparent,
                        child: Image.asset("assets/website/tbs_tv_screens/Ellipse 30.png"),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John William',
                            style: AppTextStyles.mulishStyle.copyWith(
                              color: const Color(0xFF262626),
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: const Color(0x19FF0000),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/website/tbs_tv_screens/world-svgrepo-com 1.png",
                                  height: 25.h,
                                  width: 25.w,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Public',
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Material & Straps ───
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Material Name dropdown
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Material Name',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    _selectedMaterial ?? 'Choose material name',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  PopupMenuButton<String>(
                                    color: AppColors.primaryWhite,
                                    splashRadius: 14.r,
                                    onSelected: (String value) {
                                      setState(() {
                                        _selectedMaterial = value;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14.r),
                                    ),
                                    itemBuilder: (context) => _materials
                                        .map((material) => PopupMenuItem<String>(
                                              value: material,
                                              child: Text(material),
                                            ))
                                        .toList(),
                                    offset: const Offset(0, 30),
                                    surfaceTintColor: AppColors.primaryWhite,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: AppColors.text33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10.w),

                      // Straps counter
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Straps',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => setState(() => _strapsCount--),
                                    child: Icon(
                                      Icons.remove,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '$_strapsCount',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () => setState(() => _strapsCount++),
                                    child: Icon(
                                      Icons.add,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Chains & Tarps ───
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Chains counter
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Chains',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => setState(() => _chainsCount--),
                                    child: Icon(
                                      Icons.remove,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '$_chainsCount',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () => setState(() => _chainsCount++),
                                    child: Icon(
                                      Icons.add,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10.w),

                      // Tarps counter
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tarps',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => setState(() => _tarpsCount--),
                                    child: Icon(
                                      Icons.remove,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '$_tarpsCount',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () => setState(() => _tarpsCount++),
                                    child: Icon(
                                      Icons.add,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Corners & Length ───
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Corners counter
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Corners',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => setState(() => _cornersCount--),
                                    child: Icon(
                                      Icons.remove,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '$_cornersCount',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () => setState(() => _cornersCount++),
                                    child: Icon(
                                      Icons.add,
                                      color: const Color(0xff262626),
                                      size: 25.r,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10.w),

                      // Length input
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Length',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _lengthController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter length';
                                  }
                                  if (double.tryParse(value) == null) {
                                    return 'Please enter a valid number';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Enter Length",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Weight & Height ───
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Weight input
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Weight',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _weightController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter weight';
                                        }
                                        if (double.tryParse(value) == null) {
                                          return 'Please enter a valid number';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Enter Weight",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    _selectedWeightUnit ?? 'Kgs',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  PopupMenuButton<String>(
                                    color: AppColors.primaryWhite,
                                    splashRadius: 14.r,
                                    onSelected: (String value) {
                                      setState(() {
                                        _selectedWeightUnit = value;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
                                    itemBuilder: (context) => _weightUnits
                                        .map((unit) => PopupMenuItem<String>(
                                              value: unit,
                                              child: Text(unit),
                                            ))
                                        .toList(),
                                    offset: const Offset(0, 30),
                                    surfaceTintColor: AppColors.primaryWhite,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: AppColors.text33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10.w),

                      // Height input
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Height',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _heightController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter height';
                                  }
                                  if (double.tryParse(value) == null) {
                                    return 'Please enter a valid number';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Enter Height",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Location & Hashtags ───
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Location
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Location',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _locationController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter location';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Choose Location",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10.w),

                      // Hashtags
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hashtags',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: TextFormField(
                                controller: _hashtagsController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter hashtags';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Enter Hashtags",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Description ───
                  Text('Description',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF828282),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: _descriptionController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter description';
                      }
                      return null;
                    },
                    maxLines: 6,
                    decoration: const InputDecoration(
                      hintText: 'Share your securement strategies and learn from the experience of fellow drivers. '
                          'Post detailed instructions and tips on securing different type of loads, '
                          'and help enhance safety and efficiency on the road.',
                      border: InputBorder.none,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  // ─── Tools used dropdown ───
                  Text('Securement Techniques',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF262626),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: 30.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tools used',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      _selectedTools.isEmpty ? 'Select tools' : _selectedTools.join(', '),
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  PopupMenuButton<String>(
                                    color: AppColors.primaryWhite,
                                    splashRadius: 14.r,
                                    onSelected: (String value) {
                                      setState(() {
                                        if (_selectedTools.contains(value)) {
                                          _selectedTools.remove(value);
                                        } else {
                                          _selectedTools.add(value);
                                        }
                                      });
                                    },
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
                                    itemBuilder: (context) => _tools
                                        .map((tool) => PopupMenuItem<String>(
                                              value: tool,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    _selectedTools.contains(tool)
                                                        ? Icons.check_box
                                                        : Icons.check_box_outline_blank,
                                                    color: AppColors.primaryColor,
                                                  ),
                                                  SizedBox(width: 10.w),
                                                  Text(tool),
                                                ],
                                              ),
                                            ))
                                        .toList(),
                                    offset: const Offset(0, 30),
                                    surfaceTintColor: AppColors.primaryWhite,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: AppColors.text33,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // ─── Safety Tips ───
                  Text('Safety Tips',
                      style: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF828282),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: _safetyTipsController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter safety tips';
                      }
                      return null;
                    },
                    maxLines: 6,
                    decoration: const InputDecoration(
                      hintText: 'Add safety tips related to load securement',
                      border: InputBorder.none,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  // ─── Submit ───
                  CustomButton(
                    title: _isLoading ? "Creating Post..." : "Share Securement Tips",
                    onTap: _isLoading ? null : _saveToFirebase,
                    width: MediaQuery.sizeOf(context).width * 0.28.w,
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),

            // ─── footer ───
            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}
