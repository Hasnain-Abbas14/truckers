import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/app_list/app_list.dart';

class PhotosAndVideos extends StatefulWidget {
  const PhotosAndVideos({super.key});

  @override
  State<PhotosAndVideos> createState() => _PhotosAndVideosState();
}

class _PhotosAndVideosState extends State<PhotosAndVideos> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        GridView.builder(
          padding: EdgeInsets.zero,
          itemCount: photosList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 2.20,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              photosList[index],
              fit: BoxFit.fill,
              width: MediaQuery.sizeOf(context).width * 0.15.w,
              height: MediaQuery.sizeOf(context).height * 0.15.h,
            );
          },
        )
      ],
    );
  }
}
