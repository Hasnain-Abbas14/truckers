import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_colors.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/all_widget.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Story of the Week',
              textAlign: TextAlign.center,
              style: AppTextStyles.bebasStyle.copyWith(  color: const Color(0xFF333333),
                fontSize: 96.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.58,)
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,

            children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 20.r,
              child: Icon(Icons.arrow_back_ios,color: AppColors.primaryWhite,size: 25.r,),
            )  ,
              const Spacer(),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.63,)
              ),
              const Spacer(),
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 20.r,
              child: Icon(Icons.arrow_forward_ios,color: AppColors.primaryWhite,size: 25.r,),
            )  ,


            ],
          ),
          SizedBox(height: 40.h,),
          const StoryContainer(),
          SizedBox(height: 50.h,),
          const Divider(thickness: 1,height: 1,color: Color(0xffC4C4C4),),
          SizedBox(height: 50.h,),


          Center(
            child: Text(
                'Top Stories',
                textAlign: TextAlign.center,
                style: AppTextStyles.bebasStyle.copyWith(  color: const Color(0xFF333333),
                  fontSize: 96.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.58,)
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,

            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 20.r,
                child: Icon(Icons.arrow_back_ios,color: AppColors.primaryWhite,size: 25.r,),
              )  ,
              const Spacer(),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.63,)
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 20.r,
                child: Icon(Icons.arrow_forward_ios,color: AppColors.primaryWhite,size: 25.r,),
              )  ,


            ],
          ),
          SizedBox(height: 40.h,),
          const StoryContainer(isTop: true,),
          SizedBox(height: 50.h,),
          const Divider(thickness: 1,height: 1,color: Color(0xffC4C4C4),),
          SizedBox(height: 50.h,),

          Center(
            child: Text(
                'Most Read Stories',
                textAlign: TextAlign.center,
                style: AppTextStyles.bebasStyle.copyWith(  color: const Color(0xFF333333),
                  fontSize: 96.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.58,)
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,

            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 20.r,
                child: Icon(Icons.arrow_back_ios,color: AppColors.primaryWhite,size: 25.r,),
              )  ,
              const Spacer(),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF828282),
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.63,)
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 20.r,
                child: Icon(Icons.arrow_forward_ios,color: AppColors.primaryWhite,size: 25.r,),
              )  ,


            ],
          ),
          SizedBox(height: 40.h,),
          const StoryContainer(isMostRead: true,),
          SizedBox(height: 50.h,),
          const Divider(thickness: 1,height: 1,color: Color(0xffC4C4C4),),
          SizedBox(height: 100.h,),




        ],
      ),
    );
  }
}
