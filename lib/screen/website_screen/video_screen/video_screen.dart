import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/screen/website_screen/pop_ups/pop_ups.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/custom_button.dart';

class VideoScreen extends StatefulWidget {
  final VoidCallback onTapSubmit;
  const VideoScreen({super.key, required this.onTapSubmit});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.97.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 1.7,
                    image: AssetImage(
                      "assets/website/loadboard_overview/Frame 31355.png",
                    ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Submit Your Content',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bebasStyle.copyWith(
                    color: Colors.white,
                    fontSize: 140.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                    'Share Your Moments with the Trucker\'s Based Social Community',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Colors.white,
                      fontSize: 46.sp,
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                    'Upload your videos or photos and be featured across our platforms. Connect with\nother truckers, showcase your experiences, and be a part of the conversation.',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
              shadows: [
                BoxShadow(
                  color: const Color(0x3F989898),
                  blurRadius: 15.r,
                  offset: const Offset(0, 4),
                  spreadRadius: 4,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Send us your video',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF262626),
                      fontSize: 44.sp,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('First Name',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 70.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter first name',
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w400),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Last Name',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 70.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter last name',
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w400),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Email',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 70.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter email',
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w400),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Phone Number',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 70.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter Phone Number',
                                enabledBorder: InputBorder.none,
                                hintStyle: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF262626),
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w400),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.redColor),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8).w,
                                  borderSide: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Upload File',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            height: 70.h,
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Upload File',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const Spacer(),
                                Icon(
                                  Icons.attach_file_outlined,
                                  color: const Color(0xffC4C4C4),
                                  size: 25.r,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Tag Someone',
                              style: AppTextStyles.mulishStyle.copyWith(
                                color: const Color(0xFF828282),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            height: 70.h,
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFEFEFEF)),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Tag someone',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const Spacer(),
                                Icon(
                                  Icons.alternate_email,
                                  color: const Color(0xffC4C4C4),
                                  size: 25.r,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text('Location',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 70.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Location where this video filmed',
                      suffixIcon: Icon(
                        Icons.location_on,
                        color: const Color(0xffC4C4C4),
                        size: 25.r,
                      ),
                      enabledBorder: InputBorder.none,
                      hintStyle: AppTextStyles.mulishStyle.copyWith(
                          color: const Color(0xFF262626),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8).w,
                        borderSide: const BorderSide(color: AppColors.redColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8).w,
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8).w,
                        borderSide:
                            const BorderSide(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Text('Video Description',
                    style: AppTextStyles.mulishStyle.copyWith(
                      color: const Color(0xFF828282),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: 'Video Description',
                    enabledBorder: InputBorder.none,
                    hintStyle: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF262626),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(
                          color: AppColors.redColor),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(
                          color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8).w,
                      borderSide: const BorderSide(
                          color: AppColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 35.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                      activeColor:AppColors.primaryColor, // Set active color to red
                    ),
                    SizedBox(width: 15.w
                      ,),
                    Expanded(
                      child: Text(
                          'I confirm I own the content and authorize Trucker\'s Based Social Inc. to post it.',
                          style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF262626),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(
                      'Signature:',
                      style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w400,)
                    ),
                    SizedBox(width: 10.w,),
                    SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.15.w,
                        child: const Divider(thickness: 1,height: 1, color: Color(0xff000000),)),
                    SizedBox(width: 10.w,),
                    GestureDetector(
                        onTap: (){
                          showDialog(context: context, builder: (BuildContext context) { return SignaturePopUp(); }, );
                        },
                        child: Image.asset("assets/website/loadboard_overview/pen-tool-svgrepo-com (1) 1.png",height: 25.h,width: 25.w,)) ,


                  ],
                ),
                SizedBox(height: 40.h,),
                CustomButton(title: "Submit Content", onTap:widget.onTapSubmit,width: MediaQuery.sizeOf(context).width*0.27.w,),
                SizedBox(height: 100.h,),
              ],
            ),
          )
        ],
      ),
    );
  }
}




