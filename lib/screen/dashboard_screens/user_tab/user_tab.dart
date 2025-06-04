import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import '../../../model/user_data_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Firebase Firestore
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class UserTab extends StatefulWidget {
  const UserTab({super.key});

  @override
  State<UserTab> createState() => _UserTabState();
}

class _UserTabState extends State<UserTab> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Controllers for search functionality (if implementing search)
  final TextEditingController _searchController = TextEditingController();

  // Default values for fields not in Firestore
  final String defaultCountry = 'America';
  final String defaultCompanyName = 'Trucker';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Function to handle deleting a user
  Future<void> _deleteUser(String userId) async {
    bool? confirm = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete User'),
          content: const Text('Are you sure you want to delete this user?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );

    if (confirm != null && confirm) {
      try {
        await _firestore.collection('users').doc(userId).delete();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User deleted successfully'),
            duration: Duration(seconds: 2),
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting user: $e'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // Function to handle editing a user
  Future<void> _editUser(DocumentSnapshot userDoc) async {
    final _formKey = GlobalKey<FormState>();
    String? name = userDoc['name'];
    String? email = userDoc['email'];
    String? phoneNumber = userDoc['phone_number'].toString();

    // Controllers to manage form fields
    final TextEditingController _nameController =
    TextEditingController(text: name);
    final TextEditingController _emailController =
    TextEditingController(text: email);
    final TextEditingController _phoneController =
    TextEditingController(text: phoneNumber);

    bool _isLoading = false;

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: const Text('Edit User'),
            content: Form(
              key: _formKey,
              child: SizedBox(
                width: 400.w, // Adjust as needed
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Name Field
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(labelText: 'Name'),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Name is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.h),
                      // Email Field
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Email is required';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.h),
                      // Phone Number Field
                      TextFormField(
                        controller: _phoneController,
                        decoration:
                        const InputDecoration(labelText: 'Phone Number'),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Phone number is required';
                          }
                          if (!RegExp(r'^\d+$').hasMatch(value)) {
                            return 'Enter a valid phone number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.h),
                      // Country (Read-Only)
                      TextFormField(
                        initialValue: defaultCountry,
                        decoration:
                        const InputDecoration(labelText: 'Country'),
                        readOnly: true,
                      ),
                      SizedBox(height: 10.h),
                      // Company Name (Read-Only)
                      TextFormField(
                        initialValue: defaultCompanyName,
                        decoration:
                        const InputDecoration(labelText: 'Company Name'),
                        readOnly: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: _isLoading
                    ? null
                    : () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      _isLoading = true;
                    });
                    try {
                      await _firestore
                          .collection('users')
                          .doc(userDoc.id)
                          .update({
                        'name': _nameController.text.trim(),
                        'email': _emailController.text.trim(),
                        'phone_number': _phoneController.text.trim(),
                        // Note: Passwords should be handled securely!
                      });
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('User updated successfully'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } catch (e) {
                      setState(() {
                        _isLoading = false;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Error updating user: $e'),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    }
                  }
                },
                child:
                _isLoading ? const CircularProgressIndicator() : const Text('Save'),
              ),
            ],
          );
        });
      },
    );
  }

  // Function to handle exporting to Excel (Placeholder)
  void _exportToExcel() {
    // Implement your export to Excel functionality here
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Exporting to Excel...'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Stream to listen to real-time updates from Firestore
    Stream<QuerySnapshot> usersStream =
    _firestore.collection('users').snapshots();

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(16.w), // Added padding for better layout
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // DataTable Section
                Expanded(
                  flex: 2, // Adjust flex as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Row with Title and Search
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'User',
                            style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor,
                              fontSize: 24.sp,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 200.w, // Increased width for better search
                            child: TextFormField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.primaryWhite,
                                prefixIcon:
                                Icon(Icons.search, color: AppColors.hintColor),
                                hintText: 'Search',
                                hintStyle: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 14.sp,
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1),
                                ),
                              ),
                              onChanged: (value) {
                                // Implement search functionality if needed
                              },
                            ),
                          ),
                          SizedBox(width: 10.w),
                          GestureDetector(
                            onTap: _exportToExcel,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/image/home/excel-svgrepo-com 1.png",
                                  width: 25.w,
                                  height: 25.h,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Export to Excel',
                                  style: AppTextStyles.semiBoldStyle.copyWith(
                                    color: AppColors.greenColor,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      // DataTable
                      StreamBuilder<QuerySnapshot>(
                        stream: usersStream,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          if (snapshot.hasError) {
                            return Center(
                              child: Text(
                                'Error: ${snapshot.error}',
                                style: TextStyle(
                                    color: Colors.red, fontSize: 16.sp),
                              ),
                            );
                          }

                          // Optionally, implement search/filter here
                          List<QueryDocumentSnapshot> users = snapshot.data!.docs;

                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              columnSpacing: 24.w,
                              headingRowColor: MaterialStateColor.resolveWith(
                                      (states) => AppColors.primaryWhite),
                              columns: [
                                dataColumnWithSort('Name'),
                                dataColumnWithSort('Email'),
                                dataColumnWithSort('Country'),
                                dataColumnWithSort('Phone Number'),
                                dataColumnWithSort('Company Name'),
                                const DataColumn(label: Text('')),
                              ],
                              rows: users.map((userDoc) {
                                return DataRow(cells: [
                                  DataCell(
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: userDoc['profile_image_url'] != null
                                              ? NetworkImage(
                                              userDoc['profile_image_url'])
                                              : const AssetImage(
                                              'assets/image/user/image.png')
                                          as ImageProvider,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          userDoc['name'] ?? 'N/A',
                                          style:
                                          AppTextStyles.regularStyle.copyWith(
                                            color:
                                            AppColors.primaryBlack.withOpacity(
                                                0.70),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      userDoc['email'] ?? 'N/A',
                                      style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      defaultCountry, // Default as it's not in Firestore
                                      style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      userDoc['phone_number'] != null
                                          ? userDoc['phone_number'].toString()
                                          : 'N/A',
                                      style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      defaultCompanyName, // Default as it's not in Firestore
                                      style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    PopupMenuButton<String>(
                                      icon: const Icon(Icons.more_horiz),
                                      itemBuilder:
                                          (BuildContext context) =>
                                      <PopupMenuEntry<String>>[
                                        PopupMenuItem<String>(
                                          value: 'edit',
                                          child: ListTile(
                                            leading: SvgPicture.asset(
                                                'assets/image/user/Edit.svg'),
                                            title: const Text('Edit'),
                                          ),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'delete',
                                          child: ListTile(
                                            leading: SvgPicture.asset(
                                                'assets/image/user/Delete.svg'),
                                            title: const Text('Delete'),
                                          ),
                                        ),
                                      ],
                                      onSelected: (String value) {
                                        if (value == 'edit') {
                                          _editUser(userDoc);
                                        } else if (value == 'delete') {
                                          _deleteUser(userDoc.id);
                                        }
                                      },
                                    ),
                                  ),
                                ]);
                              }).toList(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                // User Detail Side Panel
                // Expanded(
                //   flex: 1, // Adjust flex as needed
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Center(
                //         child: CircleAvatar(
                //           radius: 40,
                //           backgroundImage:
                //           AssetImage("assets/image/user/bac.png"),
                //         ),
                //       ),
                //       SizedBox(height: 20.h),
                //       Center(
                //         child: Text(
                //           'John Doe',
                //           style: AppTextStyles.semiBoldStyle.copyWith(
                //             color: AppColors.hintColor,
                //             fontSize: 22.sp,
                //           ),
                //         ),
                //       ),
                //       SizedBox(height: 20.h),
                //       Text(
                //         'Contact Info',
                //         style: AppTextStyles.semiBoldStyle.copyWith(
                //           color: AppColors.primaryBlack,
                //           fontSize: 18.sp,
                //         ),
                //       ),
                //       SizedBox(height: 20.h),
                //       // Assuming userData is static or related to selected user
                //       ...List.generate(
                //         3, // Adjust the number based on actual contact info
                //             (index) => Padding(
                //           padding: EdgeInsets.only(bottom: 20.h),
                //           child: Row(
                //             children: [
                //               SvgPicture.asset('assets/image/user/Message.svg'),
                //               SizedBox(width: 15.w),
                //               Text(
                //                 'kajope5182@ummoh.com', // Example static data
                //                 style:
                //                 AppTextStyles.regularStyle.copyWith(
                //                   color: AppColors.hintColor,
                //                   fontSize: 16.sp,
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       // Add more contact info as needed
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create DataColumn with sort functionality
  DataColumn dataColumnWithSort(String label) {
    return DataColumn(
      label: Row(
        children: [
          Text(
            label,
            style: AppTextStyles.regularStyle.copyWith(
              color: AppColors.hintColor,
              fontSize: 12.sp,
            ),
          ),
          const SizedBox(width: 5),
          const Icon(Icons.arrow_drop_down, color: AppColors.hintColor),
        ],
      ),
      // Implement sorting if needed
      onSort: (int columnIndex, bool ascending) {
        // Handle sorting logic here
      },
    );
  }
}

// UserInfo class definition (if needed for contact info)
class UserInfo {
  String? icon;
  String? name;
  UserInfo({this.icon, this.name});
}


//
//
// class UserTab extends StatefulWidget {
//   const UserTab({super.key});
//
//   @override
//   State<UserTab> createState() => _UserTabState();
// }
//
// class _UserTabState extends State<UserTab> {
//
//   final List<UserModel> dataList=[
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,companyName: 'Trucker'),
//    ];
//
//
//   final List<UserInfo> userData=[
//     UserInfo(icon: 'assets/image/user/Message.svg',name: 'kajope5182@ummoh.com'),
//     UserInfo(icon: 'assets/image/user/Call.svg',name: '33757005467'),
//     UserInfo(icon: 'assets/image/user/Location.svg',name: 'America'),
//     UserInfo(icon: 'assets/image/user/teacher-at-the-blackboard-svgrepo-com 1.svg',name: 'Jessica'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 863.w,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
//                         Text(
//                           'User',
//                           style: AppTextStyles.boldStyle
//                               .copyWith(
//                               color:
//                               AppColors.hintColor,
//                               fontSize: 24.sp),
//                         ),
//                 Spacer(),
//                         SizedBox(
//                           width: 153.w,
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor:AppColors.primaryWhite,
//
//                                 prefixIcon:   Icon(Icons.search,color: AppColors.hintColor,),
//                                 hintText:'Search',
//                                 hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor,fontSize: 10),
//                                 contentPadding: const EdgeInsets.all(10),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                   borderSide: BorderSide.none,
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                   borderSide: BorderSide.none,
//                                 ),
//                                 focusedErrorBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                   borderSide: BorderSide.none,
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                   borderSide: const BorderSide(color: Colors.red, width: 1),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                   borderSide: BorderSide.none,
//                                 ),
//                               ),
//                           ),
//                         ),
//                       SizedBox(width: 10.w,),
//                        Image(
//                            width: 25.w,
//                            height: 25.h,
//                            fit: BoxFit.cover,
//                            image: AssetImage(
//                            "assets/image/home/excel-svgrepo-com 1.png")),
//                    SizedBox(width: 10.w,),
//                         Text(
//                           'Export to Excel',
//                           style: AppTextStyles.semiBoldStyle
//                               .copyWith(
//                               color:
//                               AppColors.greenColor,
//                               fontSize: 14.sp),
//                         ),
//
//                       ],
//                       ),
//
//
//                     SizedBox(height: 10.h,),
//                       DataTable(
//                         columnSpacing: 24,
//                         border: const TableBorder(
//                             verticalInside: BorderSide.none,
//                             horizontalInside: BorderSide.none
//                         ),
//                         columns: [
//                           DataColumn(
//                             label:
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Name',
//                                   style: AppTextStyles.regularStyle.copyWith(
//                                       color: AppColors.hintColor,fontSize: 12),
//                                 ),
//                                 const SizedBox(width: 5,),
//                                 const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
//                               ],
//                             ),
//                           ),
//                           DataColumn(
//                             label: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Email',
//                                   style: AppTextStyles.regularStyle.copyWith(
//                                       color: AppColors.hintColor,fontSize: 12),
//                                 ),
//                                 const SizedBox(width: 5,),
//                                 const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
//                               ],
//                             ),
//                           ),
//                           DataColumn(
//                             label: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Country',
//                                   style: AppTextStyles.regularStyle.copyWith(
//                                       color: AppColors.hintColor,fontSize: 12),
//                                 ),
//                                 const SizedBox(width: 5,),
//                                 const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
//                               ],
//                             ),
//                           ),
//                           DataColumn(
//                             label: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Phone Number',
//                                   style: AppTextStyles.regularStyle.copyWith(
//                                       color: AppColors.hintColor,fontSize: 12),
//                                 ),
//                                 const SizedBox(width: 5,),
//                                 const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
//                               ],
//                             ),
//                           ),
//                           DataColumn(
//                             label: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Company Name',
//                                   style: AppTextStyles.regularStyle.copyWith(
//                                       color: AppColors.hintColor,fontSize: 12),
//                                 ),
//                                 const SizedBox(width: 5,),
//                                 const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
//                               ],
//                             ),
//                           ),
//                           DataColumn(
//                             label: Text(
//                               '',
//                               style: AppTextStyles.regularStyle.copyWith(
//                                   color: AppColors.hintColor,fontSize: 12),
//                             ),
//                           ),
//
//                         ],
//                         rows:
//                         List.generate(
//
//                             dataList.length, (index) =>   DataRow(cells: [
//                           DataCell(
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 CircleAvatar(backgroundImage: AssetImage(dataList[index].tutorImage.toString()),),
//                                 const SizedBox(width: 10,),
//                                 Text(
//
//                                     dataList[index].name.toString(),
//
//                                   style: AppTextStyles.regularStyle
//                                       .copyWith(
//                                       color: AppColors.primaryBlack
//                                           .withOpacity(0.70)),
//                                 )
//                               ],
//                             ),
//                           ),
//                           DataCell(Text( dataList[index].email.toString(),
//                               style: AppTextStyles.regularStyle
//                                   .copyWith(
//                                   color: AppColors.hintColor,
//                                   fontSize: 12
//
//                               )
//                           )),
//                           DataCell(Text( dataList[index].country.toString(),
//                               style: AppTextStyles.regularStyle
//                                   .copyWith(
//                                   color: AppColors.hintColor,
//                                   fontSize: 12
//                               )
//
//                           )),
//                           DataCell(Text( dataList[index].phoneNumber.toString(),
//                               style: AppTextStyles.regularStyle
//                                   .copyWith(
//                                   color: AppColors.hintColor,
//                                   fontSize: 12
//
//                               )
//
//                           )),
//                           DataCell(Text( dataList[index].companyName.toString(),
//                               style: AppTextStyles.regularStyle
//                                   .copyWith(
//                                   color: AppColors.hintColor,
//                                   fontSize: 12
//                               )
//
//                           )
//                           ),
//                           DataCell(
//
//                              StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return  PopupMenuButton<String>(
//                                icon: Icon(Icons.more_horiz),
//                                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//                                  PopupMenuItem<String>(
//                                    value: 'edit',
//                                    child: ListTile(
//                                      leading: SvgPicture.asset('assets/image/user/Edit.svg'),
//                                      title: Text('Edit'),
//                                    ),
//                                  ),
//                                  PopupMenuItem<String>(
//                                    value: 'delete',
//                                    child: ListTile(
//                                      leading: SvgPicture.asset('assets/image/user/Delete.svg'),
//                                      title: Text('Delete'),
//                                    ),
//                                  ),
//                                ],
//                                onSelected: (String value) {
//                                  if (value == 'edit') {
//                                    // Handle edit action
//                                  } else if (value == 'delete') {
//                                    // Handle delete action
//                                  }
//                                },
//                              ); },)
//
//                           ),
//
//
//                         ])),
//                       ),
//
//                     ],
//                   ),
//                 ),
//               SizedBox(width: 10.w,),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//
//                       Center(
//
//                         child: CircleAvatar(
//                           radius:40,
//                           backgroundImage: AssetImage("assets/image/user/bac.png"),
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Center(
//                         child: Text( 'John Deo',
//                             textAlign: TextAlign.center,
//                             style: AppTextStyles.semiBoldStyle
//                                 .copyWith(
//                                 color: AppColors.hintColor,
//                                 fontSize: 22
//                             ),
//
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Text( 'Contact Info',
//                         textAlign: TextAlign.center,
//                         style: AppTextStyles.semiBoldStyle
//                             .copyWith(
//                             color: AppColors.primaryBlack,
//                             fontSize: 18
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       ...List.generate(3, (index) =>     Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               SvgPicture.asset(userData[index].icon.toString()),
//                               SizedBox(width: 15,),
//                               Text( userData[index].name.toString(),
//                                 textAlign: TextAlign.center,
//                                 style: AppTextStyles.regularStyle
//                                     .copyWith(
//                                     color: AppColors.hintColor,
//                                     fontSize: 16
//                                 ),
//                               ),
//
//                             ],
//                           ),
//                           SizedBox(height: 20,),
//                         ],
//                       ),),
//
//
//
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//   }
// }
//
// class UserInfo {
//   String?icon;
//   String?name;
//   UserInfo({this.icon, this.name,});
// }



