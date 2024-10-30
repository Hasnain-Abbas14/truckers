import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';

class StoriesTab extends StatelessWidget {
  const StoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Image.asset("assets/image/auth/delete-2-svgrepo-com 1.png",height: 25.h,width: 25.w,),
                  SizedBox(width: 10.w,),
                  Image.asset("assets/image/auth/edit-3-svgrepo-com (1) 1.png",height: 25.h,width: 25.w,)
                ],
              ),
              SizedBox(height: 10.h,),
              Text(
                'Overcoming the Icy Roads: My Most Challenging Winter Trip',
                style:AppTextStyles.mulishStyle.copyWith(    color: const Color(0xFF262626),
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w700,)
              ),
              SizedBox(height: 20.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the ',
                      style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,)
                    ),
                  ),
                  Image.asset(
                      fit: BoxFit.fill,
                      height: MediaQuery.sizeOf(context).height*0.34.h,
                      width: MediaQuery.sizeOf(context).width*0.15.w,
                      "assets/image/auth/Rectangle 1615.png")
                ],
              ),
              SizedBox(height: 5.h,),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: AppTextStyles.mulishStyle.copyWith(color: const Color(0xFF8E8E93),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,)
              )


            ],
          ),
        ),
      ],
    );
  }
}
