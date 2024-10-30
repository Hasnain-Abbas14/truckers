import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widget/custom_rich_text.dart';
import '../../../../widget/overview_container.dart';

class RecentTips extends StatelessWidget {
  const RecentTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Image.asset(
            width:MediaQuery.sizeOf(context).width*1.w,
            height: MediaQuery.sizeOf(context).height * 0.50.h,
            fit: BoxFit.fill,
            "assets/image/auth/Group 1000006757.png"),
        SizedBox(
          height: 20.h,
        ),
        OverviewContainer(
          mainTitle: 'Recent Route: Houston, TX to Denver, CO',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(title: 'Dates:', subTitle: 'August 1 - August 4, 2024',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/calendar-alt-svgrepo-com (1) 1.png",height: 20.h,width: 20.w,),),
              CustomRichText(title: 'Starting Point:', subTitle: 'Houston, TX',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/backward-start-circle-line-svgrepo-com 1.png",height: 20.h,width: 20.w,),),
              CustomRichText(title: 'Destination:', subTitle: 'Denver, CO',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/route-destination-svgrepo-com 1.png",height: 20.h,width: 20.w,),),
              CustomRichText(title: 'Load Types Transported:', subTitle: 'Refrigerated Goods, Machinery Parts',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/load-circle-svgrepo-com (2) 1.png",height: 20.h,width: 20.w,),),

            ],
          ),
          isImage: true,
          isImagesRequired: Image.asset(
              fit: BoxFit.fill,
              height: MediaQuery.sizeOf(context).height*0.34.h,
              width: MediaQuery.sizeOf(context).width*0.15.w,
              "assets/image/auth/Rectangle 1615.png"),
        ),
        OverviewContainer(
          mainTitle: 'Recent Route: Houston, TX to Denver, CO',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(title: 'Dates:', subTitle: 'August 1 - August 4, 2024',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/calendar-alt-svgrepo-com (1) 1.png",height: 20.h,width: 20.w,),),
              CustomRichText(title: 'Starting Point:', subTitle: 'Houston, TX',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/backward-start-circle-line-svgrepo-com 1.png",height: 20.h,width: 20.w,),),
              CustomRichText(title: 'Destination:', subTitle: 'Denver, CO',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/route-destination-svgrepo-com 1.png",height: 20.h,width: 20.w,),),
              CustomRichText(title: 'Load Types Transported:', subTitle: 'Refrigerated Goods, Machinery Parts',isRequiredIcon: true,requiredIcon: Image.asset("assets/image/auth/load-circle-svgrepo-com (2) 1.png",height: 20.h,width: 20.w,),),

            ],
          ),
          isImage: true,
          isImagesRequired: Image.asset(
              fit: BoxFit.fill,
              height: MediaQuery.sizeOf(context).height*0.34.h,
              width: MediaQuery.sizeOf(context).width*0.15.w,
              "assets/image/auth/Rectangle 1615 (1).png"),
        ),
      ],
    );
  }
}
