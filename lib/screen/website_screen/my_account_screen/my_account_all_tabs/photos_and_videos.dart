// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:truckerbs_website/app_list/app_list.dart';
// import 'package:truckerbs_website/widget/custom_button.dart';
//
// import '../../../../widget/custom_footer.dart';
//
// class PhotosAndVideos extends StatefulWidget {
//   const PhotosAndVideos({super.key});
//
//   @override
//   State<PhotosAndVideos> createState() => _PhotosAndVideosState();
// }
//
// class _PhotosAndVideosState extends State<PhotosAndVideos> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: 30.h,
//         ),
//         GridView.builder(
//           padding: EdgeInsets.zero,
//           itemCount: photosList.length,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//             childAspectRatio: 2.20,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             return Image.asset(
//               photosList[index],
//               fit: BoxFit.fill,
//               width: MediaQuery.sizeOf(context).width * 0.15.w,
//               height: MediaQuery.sizeOf(context).height * 0.15.h,
//             );
//           },
//         ),
//         SizedBox(
//           height: 30.h,
//         ),
//         CustomButton(
//             width: 396.w,
//             title: "Add New Photo/Video",
//             onTap: () {
//               setState(() {});
//             }),
//         CustomFooter(),
//       ],
//     );
//   }
// }

///Second

//
// import 'dart:io';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:truckerbs_website/widget/custom_button.dart';
// import 'package:truckerbs_website/widget/custom_footer.dart';
//
// class PhotosAndVideos extends StatefulWidget {
//   const PhotosAndVideos({super.key});
//
//   @override
//   State<PhotosAndVideos> createState() => _PhotosAndVideosState();
// }
//
// class _PhotosAndVideosState extends State<PhotosAndVideos> {
//   bool _uploading = false;
//
//   Future<void> _pickAndUpload() async {
//     final result = await FilePicker.platform.pickFiles(
//       type: FileType.media,
//       allowMultiple: false,
//       withData: kIsWeb,
//     );
//     if (result == null) return;
//
//     setState(() => _uploading = true);
//     final file = result.files.single;
//     final stamp = DateTime.now().millisecondsSinceEpoch;
//     final fileName = '${stamp}_${file.name}';
//     final storageRef = FirebaseStorage.instance.ref().child('photos/$fileName');
//
//     late UploadTask task;
//     if (kIsWeb && file.bytes != null) {
//       task = storageRef.putData(file.bytes!);
//     } else {
//       task = storageRef.putFile(File(file.path!));
//     }
//
//     try {
//       final snap = await task;
//       final url = await snap.ref.getDownloadURL();
//       await FirebaseFirestore.instance.collection('photos').add({
//         'url': url,
//         'createdAt': FieldValue.serverTimestamp(),
//       });
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Upload failed: $e')));
//     } finally {
//       setState(() => _uploading = false);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 30.h),
//
//         // ――――― YOUR GRID (no changes) ―――――
//         StreamBuilder<QuerySnapshot>(
//           stream: FirebaseFirestore.instance.collection('photos').orderBy('createdAt', descending: true).snapshots(),
//           builder: (ctx, snap) {
//             if (snap.connectionState == ConnectionState.waiting) return const Center(child: CircularProgressIndicator());
//             final docs = snap.data?.docs ?? [];
//             return GridView.builder(
//               padding: EdgeInsets.zero,
//               itemCount: docs.length,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//                 childAspectRatio: 2.20,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemBuilder: (_, i) {
//                 final d = docs[i].data()! as Map<String, dynamic>;
//                 return ClipRRect(
//                   borderRadius: BorderRadius.circular(12.r),
//                   child: Image.network(
//                     d['url'] as String,
//                     fit: BoxFit.fill,
//                     errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//
//         SizedBox(height: 30.h),
//
//         // ――――― UPLOAD BUTTON ―――――
//         CustomButton(
//           width: 396.w,
//           title: _uploading ? 'Uploading…' : 'Add New Photo/Video',
//           onTap: _uploading
//               ? () {}
//               : () {
//                   _pickAndUpload();
//                 },
//         ),
//
//         // ――――― FOOTER ―――――
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
import 'package:video_player/video_player.dart';
import 'package:truckerbs_website/widget/custom_button.dart';
import 'package:truckerbs_website/widget/custom_footer.dart';

class PhotosAndVideos extends StatefulWidget {
  const PhotosAndVideos({Key? key}) : super(key: key);

  @override
  State<PhotosAndVideos> createState() => _PhotosAndVideosState();
}

class _PhotosAndVideosState extends State<PhotosAndVideos> {
  bool _uploading = false;

  Future<void> _pickAndUpload() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.media,
      allowMultiple: false,
      withData: kIsWeb,
    );
    if (result == null) return;

    setState(() => _uploading = true);
    final file = result.files.single;
    final ext = file.extension?.toLowerCase() ?? '';
    final isVideo = ['mp4', 'mov', 'webm', 'avi', 'mkv'].contains(ext);

    // create a unique filename
    final stamp = DateTime.now().millisecondsSinceEpoch;
    final fileName = '${stamp}_${file.name}';
    final storageRef = FirebaseStorage.instance.ref().child('uploads/$fileName');

    late UploadTask task;
    if (kIsWeb && file.bytes != null) {
      task = storageRef.putData(
        file.bytes!,
        SettableMetadata(
          contentType: isVideo ? 'video/$ext' : 'image/${ext}',
        ),
      );
    } else {
      task = storageRef.putFile(File(file.path!));
    }

    try {
      final snap = await task;
      final url = await snap.ref.getDownloadURL();
      await FirebaseFirestore.instance.collection('uploads').add({
        'url': url,
        'type': isVideo ? 'video' : 'image',
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Upload failed: $e')));
    } finally {
      setState(() => _uploading = false);
    }
  }

  void _openVideo(String url) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => VideoPlayerScreen(videoUrl: url),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),

        // ――――― GRID OF UPLOADS ―――――
        SizedBox(
          height: 600,
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('uploads').orderBy('createdAt', descending: true).snapshots(),
            builder: (ctx, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final docs = snap.data?.docs ?? [];
              if (docs.isEmpty) {
                return const Center(child: Text('No photos or videos yet'));
              }
              return GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: docs.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (_, i) {
                  final data = docs[i].data()! as Map<String, dynamic>;
                  final url = data['url'] as String;
                  final type = data['type'] as String? ?? 'image';

                  if (type == 'image') {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
                      ),
                    );
                  } else {
                    // video placeholder tile
                    return GestureDetector(
                      onTap: () => _openVideo(url),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // dark overlay
                            Container(color: Colors.black26),
                            const Center(
                              child: Icon(Icons.play_circle_fill, size: 50, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              );
            },
          ),
        ),

        SizedBox(height: 30.h),

        // ――――― UPLOAD BUTTON ―――――
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomButton(
            width: 396.w,
            title: _uploading ? 'Uploading…' : 'Add New Photo/Video',
            onTap: _uploading ? () {} : _pickAndUpload,
          ),
        ),

        SizedBox(height: 20.h),

        // ――――― FOOTER ―――――
        const CustomFooter(),
      ],
    );
  }
}

/// Simple full‑screen video player page
class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerScreen({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() => _initialized = true);
        _controller.play();
      });
    _controller.setLooping(false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => _controller.value.isPlaying ? _controller.pause() : _controller.play());
        },
        child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
