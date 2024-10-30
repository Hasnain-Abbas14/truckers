import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/widget/custom_rich_text.dart';
import 'package:truckerbs_website/widget/overview_container.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 30.h,),
        const OverviewContainer(
          mainTitle: 'Experience Summary',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(title: 'Years of Experience:', subTitle: '15 Years on the Road'),
              CustomRichText(title: 'Specialization:', subTitle: 'Flatbed, Tanker, Heavy Haul'),
              CustomRichText(title: 'Endorsements:', subTitle: 'Hazmat, Tanker'),
            ],
          ),

        ),
        const OverviewContainer(
          mainTitle: 'Company Details',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(title: 'Current Employer:', subTitle: 'Trucker’s BS Company'),
              CustomRichText(title: 'Company Contact Details:', subTitle: 'XYZ Logistics, (555) 123-4567, www.xyzlogistics.com'),
            ],
          ),

        ),
        const OverviewContainer(
          mainTitle: 'Equipment Information',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(title: 'Truck Type & Model:', subTitle: 'Kenworth T680'),
              CustomRichText(title: 'Trailer Types:', subTitle: 'Reefer, Flatbed'),
              CustomRichText(title: 'Maintenance History:', subTitle: 'Routine Maintenance: Last Checked on July 2024'),
            ],
          ),

        ),
        const OverviewContainer(
          mainTitle: 'Certifications and Awards',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(title: 'Safety Certifications:', subTitle: 'MCSA Safety Course Certified'),
              CustomRichText(title: 'Driving School:', subTitle: 'ABC Trucking Academy, Graduated in 2005'),
              CustomRichText(title: 'Awards & Recognitions:', subTitle: '2023 Trucker of the Year'),
            ],
          ),

        ),
        SizedBox(height: 100.h,)
      ],
    );
  }
}
