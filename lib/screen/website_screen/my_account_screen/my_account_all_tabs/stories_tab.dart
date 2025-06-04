// import 'dart:io';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:truckerbs_website/themes/app_text_styles.dart';
// import 'package:truckerbs_website/widget/custom_button.dart';
// import 'package:truckerbs_website/widget/custom_footer.dart';
// import 'package:truckerbs_website/widget/reusable_text_form.dart';
//
// class StoriesTab extends StatefulWidget {
//   const StoriesTab({super.key});
//
//   @override
//   State<StoriesTab> createState() => _StoriesTabState();
// }
//
// class _StoriesTabState extends State<StoriesTab> {
//   bool _isAddNewStory = false;
//   final _titleCtrl = TextEditingController();
//   final _storyCtrl = TextEditingController();
//   File? _pickedFile;
//   Uint8List? _pickedFileBytes;
//   String? _pickedFileName;
//   bool _loading = false;
//
//   @override
//   void dispose() {
//     _titleCtrl.dispose();
//     _storyCtrl.dispose();
//     super.dispose();
//   }
//
//   Future<void> _pickFile() async {
//     final result = await FilePicker.platform.pickFiles(
//       type: FileType.media,
//       allowMultiple: false,
//       withData: kIsWeb, // will fill bytes on web
//     );
//     if (result == null) return;
//     final file = result.files.single;
//     setState(() {
//       _pickedFileName = file.name;
//       if (kIsWeb) {
//         _pickedFileBytes = file.bytes;
//         _pickedFile = null;
//       } else {
//         _pickedFile = File(file.path!);
//         _pickedFileBytes = null;
//       }
//     });
//   }
//
//   Future<void> _saveStory() async {
//     // ensure we actually have a file
//     final hasFile = kIsWeb ? _pickedFileBytes != null : _pickedFile != null;
//     if (_titleCtrl.text.isEmpty ||
//         _storyCtrl.text.isEmpty ||
//         !hasFile) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please enter title, story and pick a file')),
//       );
//       return;
//     }
//
//     setState(() => _loading = true);
//     try {
//       final stamp = DateTime.now().millisecondsSinceEpoch;
//       final storageRef = FirebaseStorage.instance
//           .ref()
//           .child('stories/${stamp}_$_pickedFileName');
//
//       UploadTask uploadTask;
//       if (kIsWeb) {
//         uploadTask = storageRef.putData(
//           _pickedFileBytes!,
//           SettableMetadata(contentType: 'image/jpeg'),
//         );
//       } else {
//         uploadTask = storageRef.putFile(_pickedFile!);
//       }
//
//       final snapshot = await uploadTask;
//       final fileUrl = await snapshot.ref.getDownloadURL();
//
//       await FirebaseFirestore.instance.collection('stories').add({
//         'title': _titleCtrl.text.trim(),
//         'story': _storyCtrl.text.trim(),
//         'fileUrl': fileUrl,
//         'createdAt': FieldValue.serverTimestamp(),
//       });
//
//       // reset
//       _titleCtrl.clear();
//       _storyCtrl.clear();
//       _pickedFile = null;
//       _pickedFileBytes = null;
//       _pickedFileName = null;
//
//       setState(() {
//         _loading = false;
//         _isAddNewStory = false;
//       });
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Story saved!')),
//       );
//     } catch (e) {
//       setState(() => _loading = false);
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error saving story: $e')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // ——————————————————
//         // Either show the list of stories or the “Add Story” form
//         // ——————————————————
//         _isAddNewStory == false
//             ? StreamBuilder<QuerySnapshot>(
//           stream: FirebaseFirestore.instance
//               .collection('stories')
//               .orderBy('createdAt', descending: true)
//               .snapshots(),
//           builder: (ctx, snap) {
//             if (snap.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             }
//             final docs = snap.data?.docs ?? [];
//             if (docs.isEmpty) {
//               // no stories yet: show nothing (design doesn’t specify a placeholder)
//               return const SizedBox.shrink();
//             }
//             // render each story with your exact container layout
//             return Column(
//               children: docs.map((doc) {
//                 final d = doc.data()! as Map<String, dynamic>;
//                 return Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//                   width: double.infinity.w,
//                   decoration: ShapeDecoration(
//                     color: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30).w,
//                     ),
//                     shadows: const [
//                       BoxShadow(
//                         color: Color(0x3F989898),
//                         blurRadius: 15,
//                         offset: Offset(0, 4),
//                         spreadRadius: 4,
//                       )
//                     ],
//                   ),
//                   margin: EdgeInsets.only(bottom: 20.h),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // trash & edit icons remain static
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Image.asset(
//                             "assets/image/auth/delete-2-svgrepo-com 1.png",
//                             height: 25.h,
//                             width: 25.w,
//                           ),
//                           SizedBox(width: 10.w),
//                           Image.asset(
//                             "assets/image/auth/edit-3-svgrepo-com (1) 1.png",
//                             height: 25.h,
//                             width: 25.w,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 10.h),
//                       // dynamic title
//                       Text(
//                         d['title'] ?? '',
//                         style: AppTextStyles.mulishStyle.copyWith(
//                           color: const Color(0xFF262626),
//                           fontSize: 38.sp,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       SizedBox(height: 20.h),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               d['story'] ?? '',
//                               style: AppTextStyles.mulishStyle.copyWith(
//                                 color: const Color(0xFF8E8E93),
//                                 fontSize: 18.sp,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           // dynamic image
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(12),
//                             child: Image.network(
//                               d['fileUrl'] ?? '',
//                               height: MediaQuery.sizeOf(context).height * 0.34.h,
//                               width: MediaQuery.sizeOf(context).width * 0.15.w,
//                               fit: BoxFit.fill,
//                               errorBuilder: (_, __, ___) =>
//                               const Icon(Icons.broken_image),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               }).toList(),
//             );
//           },
//         )
//             : Container(
//           padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
//           width: double.infinity.w,
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30.r),
//             ),
//             shadows: const [
//               BoxShadow(
//                 color: Color(0x3F989898),
//                 blurRadius: 15,
//                 offset: Offset(0, 4),
//                 spreadRadius: 4,
//               )
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 30.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Add Story',
//                       style: AppTextStyles.bebasStyle.copyWith(
//                         color: const Color(0xFF333333),
//                         fontSize: 96.sp,
//                         fontWeight: FontWeight.w400,
//                         letterSpacing: -0.58,
//                       )),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Video / Photo File',
//                           style: AppTextStyles.mulishStyle.copyWith(
//                             color: const Color(0xFF828282),
//                             fontSize: 24.sp,
//                             fontWeight: FontWeight.w400,
//                           )),
//                       SizedBox(height: 10.h),
//                       // upload button now shows filename
//                       GestureDetector(
//                         onTap: _pickFile,
//                         child: Container(
//                           width: 396.05.w,
//                           height: 80.h,
//                           decoration: ShapeDecoration(
//                             color: const Color(0x19FF0000),
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(4.r)),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Icon(
//                                 Icons.attach_file_outlined,
//                                 color: Color(0xFF262626),
//                               ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 _pickedFileName ?? 'Upload File',
//                                 textAlign: TextAlign.center,
//                                 style: AppTextStyles.mulishStyle.copyWith(
//                                   color: const Color(0xFF262626),
//                                   fontSize: 32.sp,
//                                   fontWeight: FontWeight.w700,
//                                   letterSpacing: -0.32,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(height: 30.h),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Title',
//                             style: AppTextStyles.nunito.copyWith(
//                               color: const Color(0xFF030229),
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(height: 10.h),
//                         ReusableTextForm(
//                           controller: _titleCtrl,
//                           hintText: 'Enter Route',
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 10.w),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Date',
//                             style: AppTextStyles.nunito.copyWith(
//                               color: const Color(0xFF030229),
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w400,
//                             )),
//                         SizedBox(height: 10.h),
//                         ReusableTextForm(
//                           hintText: 'Selected Automatically',
//                           enabled: false,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10.h),
//               Text('Story',
//                   style: AppTextStyles.nunito.copyWith(
//                     color: const Color(0xFF030229),
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w400,
//                   )),
//               SizedBox(height: 10.h),
//               ReusableTextForm(
//                 controller: _storyCtrl,
//                 maxLine: 10,
//                 hintText: 'Write your story here',
//               ),
//               SizedBox(height: 40.h),
//               CustomButton(
//                 width: 396.w,
//                 title: _loading ? 'Saving…' : 'Save Story',
//                 onTap: _loading ? null : _saveStory,
//               ),
//             ],
//           ),
//         ),
//
//         // ——————————————————
//         // “Add New Story” button
//         // ——————————————————
//         if (!_isAddNewStory)
//           CustomButton(
//             width: 396.w,
//             title: "Add New Story",
//             onTap: () {
//               setState(() {
//                 _isAddNewStory = true;
//               });
//             },
//           ),
//
//         // ——————————————————
//         // Footer
//         // ——————————————————
//         const CustomFooter(),
//       ],
//     );
//   }
// }

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/custom_footer.dart';
import 'package:truckerbs_website/widget/reusable_text_form.dart';

class StoriesTab extends StatefulWidget {
  const StoriesTab({super.key});

  @override
  State<StoriesTab> createState() => _StoriesTabState();
}

class _StoriesTabState extends State<StoriesTab> {
  bool _isAddNewStory = false;
  final _titleCtrl = TextEditingController();
  final _storyCtrl = TextEditingController();
  File? _pickedFile;
  Uint8List? _pickedFileBytes;
  String? _pickedFileName;
  bool _loading = false;

  @override
  void dispose() {
    _titleCtrl.dispose();
    _storyCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.media,
      allowMultiple: false,
      withData: kIsWeb, // will fill bytes on web
    );
    if (result == null) return;
    final file = result.files.single;
    setState(() {
      _pickedFileName = file.name;
      if (kIsWeb) {
        _pickedFileBytes = file.bytes;
        _pickedFile = null;
      } else {
        _pickedFile = File(file.path!);
        _pickedFileBytes = null;
      }
    });
  }

  Future<void> _saveStory() async {
    // ensure we actually have a file
    final hasFile = kIsWeb ? _pickedFileBytes != null : _pickedFile != null;
    if (_titleCtrl.text.isEmpty || _storyCtrl.text.isEmpty || !hasFile) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter title, story and pick a file')),
      );
      return;
    }

    setState(() => _loading = true);
    try {
      final stamp = DateTime.now().millisecondsSinceEpoch;
      final storageRef = FirebaseStorage.instance.ref().child('stories/${stamp}_$_pickedFileName');

      UploadTask uploadTask;
      if (kIsWeb) {
        uploadTask = storageRef.putData(
          _pickedFileBytes!,
          SettableMetadata(contentType: 'image/jpeg'),
        );
      } else {
        uploadTask = storageRef.putFile(_pickedFile!);
      }

      final snapshot = await uploadTask;
      final fileUrl = await snapshot.ref.getDownloadURL();

      await FirebaseFirestore.instance.collection('stories').add({
        'title': _titleCtrl.text.trim(),
        'story': _storyCtrl.text.trim(),
        'fileUrl': fileUrl,
        'createdAt': FieldValue.serverTimestamp(),
      });

      // reset
      _titleCtrl.clear();
      _storyCtrl.clear();
      _pickedFile = null;
      _pickedFileBytes = null;
      _pickedFileName = null;

      setState(() {
        _loading = false;
        _isAddNewStory = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Story saved!')),
      );
    } catch (e) {
      setState(() => _loading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving story: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ——————————————————
        // Either show the list of stories or the “Add Story” form
        // ——————————————————
        _isAddNewStory == false
            ? StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('stories').orderBy('createdAt', descending: true).snapshots(),
                builder: (ctx, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final docs = snap.data?.docs ?? [];
                  if (docs.isEmpty) {
                    // no stories yet: show nothing (design doesn’t specify a placeholder)
                    return const SizedBox.shrink();
                  }
                  // render each story with your exact container layout
                  return Column(
                    children: docs.map((doc) {
                      final d = doc.data()! as Map<String, dynamic>;
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                        width: double.infinity.w,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30).w,
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
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // trash & edit icons remain static
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/image/auth/delete-2-svgrepo-com 1.png",
                                  height: 25.h,
                                  width: 25.w,
                                ),
                                SizedBox(width: 10.w),
                                Image.asset(
                                  "assets/image/auth/edit-3-svgrepo-com (1) 1.png",
                                  height: 25.h,
                                  width: 25.w,
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            // dynamic title
                            Text(
                              d['title'] ?? '',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF262626),
                                fontSize: 38.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    d['story'] ?? '',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF8E8E93),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                // dynamic image
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    d['fileUrl'] ?? '',
                                    height: MediaQuery.sizeOf(context).height * 0.34.h,
                                    width: MediaQuery.sizeOf(context).width * 0.15.w,
                                    fit: BoxFit.fill,
                                    errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  );
                },
              )
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                width: double.infinity.w,
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
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Add Story',
                            style: AppTextStyles.bebasStyle.copyWith(
                              color: const Color(0xFF333333),
                              fontSize: 96.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.58,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Video / Photo File',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF828282),
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(height: 10.h),
                            // upload button now shows filename
                            GestureDetector(
                              onTap: _pickFile,
                              child: Container(
                                width: 396.05.w,
                                height: 80.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0x19FF0000),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.attach_file_outlined,
                                      color: Color(0xFF262626),
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      _pickedFileName ?? 'Upload File',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.32,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Title',
                                  style: AppTextStyles.nunito.copyWith(
                                    color: const Color(0xFF030229),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(height: 10.h),
                              ReusableTextForm(
                                controller: _titleCtrl,
                                hintText: 'Enter Route',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date',
                                  style: AppTextStyles.nunito.copyWith(
                                    color: const Color(0xFF030229),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(height: 10.h),
                              const ReusableTextForm(
                                hintText: 'Selected Automatically',
                                enabled: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text('Story',
                        style: AppTextStyles.nunito.copyWith(
                          color: const Color(0xFF030229),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(height: 10.h),
                    ReusableTextForm(
                      controller: _storyCtrl,
                      maxLine: 10,
                      hintText: 'Write your story here',
                    ),
                    SizedBox(height: 40.h),
                    CustomButton(
                      width: 396.w,
                      title: _loading ? 'Saving…' : 'Save Story',
                      onTap: _saveStory,
                    ),
                  ],
                ),
              ),

        // ——————————————————
        // “Add New Story” button
        // ——————————————————
        if (!_isAddNewStory)
          CustomButton(
            width: 396.w,
            title: "Add New Story",
            onTap: () {
              setState(() {
                _isAddNewStory = true;
              });
            },
          ),

        // ——————————————————
        // Footer
        // ——————————————————
        const CustomFooter(),
      ],
    );
  }
}
