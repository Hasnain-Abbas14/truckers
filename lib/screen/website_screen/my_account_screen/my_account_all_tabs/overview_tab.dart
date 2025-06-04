// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:truckerbs_website/widget/custom_rich_text.dart';
// import 'package:truckerbs_website/widget/overview_container.dart';
//
// import '../../../../widget/custom_footer.dart';
//
// class OverviewTab extends StatelessWidget {
//   const OverviewTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         SizedBox(height: 30.h,),
//         const OverviewContainer(
//           mainTitle: 'Experience Summary',
//           requiredWidgets: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CustomRichText(title: 'Years of Experience:', subTitle: '15 Years on the Road'),
//               CustomRichText(title: 'Specialization:', subTitle: 'Flatbed, Tanker, Heavy Haul'),
//               CustomRichText(title: 'Endorsements:', subTitle: 'Hazmat, Tanker'),
//             ],
//           ),
//
//         ),
//         const OverviewContainer(
//           mainTitle: 'Company Details',
//           requiredWidgets: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CustomRichText(title: 'Current Employer:', subTitle: 'Trucker’s BS Company'),
//               CustomRichText(title: 'Company Contact Details:', subTitle: 'XYZ Logistics, (555) 123-4567, www.xyzlogistics.com'),
//             ],
//           ),
//
//         ),
//         const OverviewContainer(
//           mainTitle: 'Equipment Information',
//           requiredWidgets: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CustomRichText(title: 'Truck Type & Model:', subTitle: 'Kenworth T680'),
//               CustomRichText(title: 'Trailer Types:', subTitle: 'Reefer, Flatbed'),
//               CustomRichText(title: 'Maintenance History:', subTitle: 'Routine Maintenance: Last Checked on July 2024'),
//             ],
//           ),
//
//         ),
//         const OverviewContainer(
//           mainTitle: 'Certifications and Awards',
//           requiredWidgets: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CustomRichText(title: 'Safety Certifications:', subTitle: 'MCSA Safety Course Certified'),
//               CustomRichText(title: 'Driving School:', subTitle: 'ABC Trucking Academy, Graduated in 2005'),
//               CustomRichText(title: 'Awards & Recognitions:', subTitle: '2023 Trucker of the Year'),
//             ],
//           ),
//
//         ),
//         SizedBox(height: 100.h,),
//         CustomFooter(),
//       ],
//     );
//   }
// }






import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/widget/custom_footer.dart';
import 'package:truckerbs_website/widget/custom_rich_text.dart';
import 'package:truckerbs_website/widget/overview_container.dart';

class OverviewTab extends StatefulWidget {
  const OverviewTab({super.key});

  @override
  State<OverviewTab> createState() => _OverviewTabState();
}

class _OverviewTabState extends State<OverviewTab> {
  Map<String, dynamic>? userData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchProfileData();
  }

  Future<void> fetchProfileData() async {
    try {
      final userId = FirebaseAuth.instance.currentUser!.uid;
      final doc = await FirebaseFirestore.instance.collection('users').doc(userId).get();

      if (doc.exists) {
        setState(() {
          userData = doc.data();
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error fetching profile: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading || userData == null
        ? const Center(child: CircularProgressIndicator())
        : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),
        OverviewContainer(
          mainTitle: 'Experience Summary',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(
                title: 'Years of Experience:',
                subTitle: userData!['experience'] ?? 'N/A',
              ),
              CustomRichText(
                title: 'Specialization:',
                subTitle: userData!['specialization'] ?? 'N/A',
              ),
              CustomRichText(
                title: 'Endorsements:',
                subTitle: userData!['endorsements'] ?? 'N/A',
              ),
            ],
          ),
        ),
        OverviewContainer(
          mainTitle: 'Company Details',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(
                title: 'Current Employer:',
                subTitle: userData!['employer'] ?? 'N/A',
              ),
              CustomRichText(
                title: 'Company Contact Details:',
                subTitle: userData!['contact_details'] ?? 'N/A',
              ),
            ],
          ),
        ),
        OverviewContainer(
          mainTitle: 'Equipment Information',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(
                title: 'Truck Type & Model:',
                subTitle: userData!['truck_model'] ?? 'N/A',
              ),
              CustomRichText(
                title: 'Trailer Types:',
                subTitle: userData!['trailer_types'] ?? 'N/A',
              ),
              CustomRichText(
                title: 'Maintenance History:',
                subTitle: userData!['maintenance'] ?? 'N/A',
              ),
            ],
          ),
        ),
        OverviewContainer(
          mainTitle: 'Certifications and Awards',
          requiredWidgets: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomRichText(
                title: 'Safety Certifications:',
                subTitle: userData!['certification'] ?? 'N/A',
              ),
              CustomRichText(
                title: 'Driving School:',
                subTitle: userData!['school'] ?? 'N/A',
              ),
              CustomRichText(
                title: 'Awards & Recognitions:',
                subTitle: userData!['award'] ?? 'N/A',
              ),
            ],
          ),
        ),
        SizedBox(height: 100.h),
        const CustomFooter(),
      ],
    );
  }
}
