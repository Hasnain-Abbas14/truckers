import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:svg_flutter/svg.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';
import 'package:truckerbs_website/widget/custom_button.dart';

import '../../../themes/app_colors.dart';
import '../../../widget/custom_footer.dart';

class LoadSecurement extends StatelessWidget {
  final VoidCallback onTapCreatePost;
  const LoadSecurement({super.key, required this.onTapCreatePost});

  String _getTimeAgo(Timestamp timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp.toDate());

    if (difference.inDays > 0) {
      return '${difference.inDays} ${difference.inDays == 1 ? 'DAY' : 'DAYS'} AGO';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} ${difference.inHours == 1 ? 'HOUR' : 'HOURS'} AGO';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'MINUTE' : 'MINUTES'} AGO';
    } else {
      return 'JUST NOW';
    }
  }

  Future<void> _addComment(String postId, String comment) async {
    if (comment.trim().isEmpty) return;

    try {
      final commentData = {
        'text': comment,
        'userId': 'current_user_id', // Replace with actual user ID
        'userName': 'John William', // Replace with actual user name
        'timestamp': FieldValue.serverTimestamp(),
      };

      await FirebaseFirestore.instance
          .collection('posts')
          .doc(postId)
          .update({
        'comments': FieldValue.arrayUnion([commentData])
      });
    } catch (e) {
      print('Error adding comment: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Contact us',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bebasStyle.copyWith(
                        color: const Color(0xFF333333),
                        fontSize: 79.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.58,
                      ),
                    ),
                    const Spacer(),
                    CustomButton(
                      title: "Create Post",
                      onTap: onTapCreatePost,
                      width: MediaQuery.sizeOf(context).width * 0.28.w,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.only(right: 30.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20).w,
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3FC8C8C8),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Image.asset(
                          height: 20.h,
                          width: 20.w,
                          "assets/website/loadboard_overview/filter-list-svgrepo-com (1) 1.png",
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Image.asset(
                          height: 20.h,
                          width: 20.w,
                          "assets/website/auth_screen/Combined-Shape.png",
                        ),
                      ),
                      hintText: "Search for loads by keyword or location...",
                      enabledBorder: InputBorder.none,
                      hintStyle: AppTextStyles.mulishStyle.copyWith(
                        color: const Color(0xFF828282),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.24,
                      ),
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
                        borderSide: const BorderSide(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('posts')
                      .orderBy('timestamp', descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return const Center(
                        child: Text('No posts yet'),
                      );
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final doc = snapshot.data!.docs[index];
                        final data = doc.data() as Map<String, dynamic>;
                        final comments = List<Map<String, dynamic>>.from(data['comments'] ?? []);
                        final timestamp = data['timestamp'] as Timestamp?;
                        
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: Colors.transparent,
                                    child: Image.asset("assets/website/tbs_tv_screens/Ellipse 30.png"),
                                  ),
                                  SizedBox(width: 10.w),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'John William',
                                        style: AppTextStyles.mulishStyle.copyWith(
                                          color: const Color(0xFF262626),
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '20h .',
                                            style: AppTextStyles.mulishStyle.copyWith(
                                              color: const Color(0xFF828282),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          Image.asset(
                                            "assets/website/tbs_tv_screens/location-1-svgrepo-com 1.png",
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            data['location'] ?? 'No location',
                                            style: AppTextStyles.poppinsStyle.copyWith(
                                              color: const Color(0xFF828282),
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.h),
                              if (data['fileUrl'] != null)
                                Image.network(
                                  data['fileUrl'],
                                  width: double.infinity.w,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: double.infinity.w,
                                      height: 200.h,
                                      color: Colors.grey[300],
                                      child: const Center(
                                        child: Icon(Icons.error),
                                      ),
                                    );
                                  },
                                ),
                              SizedBox(height: 20.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    height: 25.h,
                                    width: 25.w,
                                    "assets/website/billing/Lİke.svg",
                                  ),
                                  SizedBox(width: 10.w),
                                  SvgPicture.asset(
                                    height: 25.h,
                                    width: 25.w,
                                    "assets/website/billing/Comment.svg",
                                  ),
                                  SizedBox(width: 10.w),
                                  SvgPicture.asset(
                                    height: 25.h,
                                    width: 25.w,
                                    "assets/website/billing/SharePosts.svg",
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset(
                                    height: 25.h,
                                    width: 25.w,
                                    "assets/website/billing/Save.svg",
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                '${data['likes'] ?? 0} rad',
                                style: AppTextStyles.mulishStyle.copyWith(
                                  color: const Color(0xFF262626),
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 15.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Straps',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF8E8E93),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                                          decoration: ShapeDecoration(
                                            color: const Color(0x19FF0000),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${data['straps'] ?? 0}',
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF262626),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Chains',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF8E8E93),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                                          decoration: ShapeDecoration(
                                            color: const Color(0x19FF0000),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${data['chains'] ?? 0}',
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF262626),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Tarps',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF8E8E93),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                                          decoration: ShapeDecoration(
                                            color: const Color(0x19FF0000),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${data['tarps'] ?? 0}',
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF262626),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Corners',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF8E8E93),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                                          decoration: ShapeDecoration(
                                            color: const Color(0x19FF0000),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${data['corners'] ?? 0}',
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF262626),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Length',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF8E8E93),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                                          decoration: ShapeDecoration(
                                            color: const Color(0x19FF0000),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              data['length'] ?? '0',
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF262626),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Height',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.mulishStyle.copyWith(
                                            color: const Color(0xFF8E8E93),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                                          decoration: ShapeDecoration(
                                            color: const Color(0x19FF0000),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              data['height'] ?? '0',
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF262626),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.h),
                              Divider(
                                thickness: 1.w,
                                height: 1.h,
                                color: const Color(0xffC4C4C4),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                '${data['likes'] ?? 0} likes',
                                style: const TextStyle(
                                  color: Color(0xFF262626),
                                  fontSize: 24,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  height: 0.75,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'terrylucas ',
                                    style: AppTextStyles.mulishStyle.copyWith(
                                      color: const Color(0xFF262626),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      data['description'] ?? '',
                                      style: AppTextStyles.mulishStyle.copyWith(
                                        color: const Color(0xFF262626),
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              if (comments.isNotEmpty) ...[
                                SizedBox(height: 10.h),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: comments.length,
                                  itemBuilder: (context, commentIndex) {
                                    final comment = comments[commentIndex];
                                    final commentTimestamp = comment['timestamp'] as Timestamp?;
                                    
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                comment['userName'] ?? 'User',
                                                style: AppTextStyles.mulishStyle.copyWith(
                                                  color: const Color(0xFF262626),
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(width: 10.w),
                                              Text(
                                                comment['text'] ?? '',
                                                style: AppTextStyles.mulishStyle.copyWith(
                                                  color: const Color(0xFF262626),
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (commentTimestamp != null)
                                            Text(
                                              _getTimeAgo(commentTimestamp),
                                              style: AppTextStyles.mulishStyle.copyWith(
                                                color: const Color(0xFF8E8E8E),
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20.h),
                                    Container(
                                      padding: EdgeInsets.only(right: 30.w),
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20).w,
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: Color(0x3FC8C8C8),
                                            blurRadius: 20,
                                            offset: Offset(0, 4),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: CommentInputField(
                                        postId: doc.id,
                                        onCommentAdded: _addComment,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              if (timestamp != null) ...[
                                SizedBox(height: 10.h),
                                Text(
                                  _getTimeAgo(timestamp),
                                  style: AppTextStyles.mulishStyle.copyWith(
                                    color: const Color(0xFF8E8E8E),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 100.h),
          CustomFooter(),
        ],
      ),
    );
  }
}

class CommentInputField extends StatefulWidget {
  final String postId;
  final Function(String, String) onCommentAdded;

  const CommentInputField({
    Key? key,
    required this.postId,
    required this.onCommentAdded,
  }) : super(key: key);

  @override
  State<CommentInputField> createState() => _CommentInputFieldState();
}

class _CommentInputFieldState extends State<CommentInputField> {
  final _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    final comment = _commentController.text.trim();
    if (comment.isNotEmpty) {
      widget.onCommentAdded(widget.postId, comment);
      _commentController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _commentController,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: _handleSubmit,
          child: Text(
            'post',
            style: AppTextStyles.mulishStyle.copyWith(
              color: const Color(0xFF0095F6),
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        prefixIcon: const Icon(
          Icons.emoji_emotions_outlined,
          color: Color(0xff101010),
        ),
        hintText: "Add a comment...",
        enabledBorder: InputBorder.none,
        hintStyle: AppTextStyles.mulishStyle.copyWith(
          color: const Color(0xFF828282),
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.24,
        ),
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
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
      ),
      onFieldSubmitted: (_) => _handleSubmit(),
    );
  }
}
