import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truckerbs_website/themes/app_text_styles.dart';


class RattingAndReviewTab extends StatelessWidget {
  const RattingAndReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
      Container(
        padding: const EdgeInsets.all(20).w,
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
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10).w,
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: ShapeDecoration(
                color: Color(0x4CE4E4E4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 34.r,child: Image.asset("assets/website/auth_screen/Ellipse 11.png"),),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non eni',
                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.27,)
                        ),
                      )


                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
                    Text(
                        'Jessica',
                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    ),
                    SizedBox(width: 20.w,),
                    Row(children: List.generate(5, (index)=> Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.star,color: Color(0xffFFB903),),
                    )),),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text(
                          '5.0',
                          style: AppTextStyles.mulishStyle.copyWith(color: Color(0xFF8E8E93),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.27,)
                      ),
                    ),
                    Text(
                        '2 weeks ago',
                        textAlign: TextAlign.right,
                        style:AppTextStyles.mulishStyle.copyWith(color: Color(0x7F18A0FB),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    )
                  ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10).w,
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: ShapeDecoration(
                color: Color(0x4CE4E4E4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 34.r,child: Image.asset("assets/website/auth_screen/Ellipse 11.png"),),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non eni',
                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.27,)
                        ),
                      )


                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
                    Text(
                        'Jessica',
                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    ),
                    SizedBox(width: 20.w,),
                    Row(children: List.generate(5, (index)=> Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.star,color: Color(0xffFFB903),),
                    )),),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text(
                          '5.0',
                          style: AppTextStyles.mulishStyle.copyWith(color: Color(0xFF8E8E93),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.27,)
                      ),
                    ),
                    Text(
                        '2 weeks ago',
                        textAlign: TextAlign.right,
                        style:AppTextStyles.mulishStyle.copyWith(color: Color(0x7F18A0FB),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    )
                  ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10).w,
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: ShapeDecoration(
                color: Color(0x4CE4E4E4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 34.r,child: Image.asset("assets/website/auth_screen/Ellipse 11.png"),),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non eni',
                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.27,)
                        ),
                      )


                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
                    Text(
                        'Jessica',
                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    ),
                    SizedBox(width: 20.w,),
                    Row(children: List.generate(5, (index)=> Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.star,color: Color(0xffFFB903),),
                    )),),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text(
                          '5.0',
                          style: AppTextStyles.mulishStyle.copyWith(color: Color(0xFF8E8E93),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.27,)
                      ),
                    ),
                    Text(
                        '2 weeks ago',
                        textAlign: TextAlign.right,
                        style:AppTextStyles.mulishStyle.copyWith(color: Color(0x7F18A0FB),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    )
                  ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10).w,
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: ShapeDecoration(
                color: Color(0x4CE4E4E4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 34.r,child: Image.asset("assets/website/auth_screen/Ellipse 11.png"),),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non eni',
                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.27,)
                        ),
                      )


                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
                    Text(
                        'Jessica',
                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    ),
                    SizedBox(width: 20.w,),
                    Row(children: List.generate(5, (index)=> Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.star,color: Color(0xffFFB903),),
                    )),),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text(
                          '5.0',
                          style: AppTextStyles.mulishStyle.copyWith(color: Color(0xFF8E8E93),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.27,)
                      ),
                    ),
                    Text(
                        '2 weeks ago',
                        textAlign: TextAlign.right,
                        style:AppTextStyles.mulishStyle.copyWith(color: Color(0x7F18A0FB),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    )
                  ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10).w,
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: ShapeDecoration(
                color: Color(0x4CE4E4E4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 34.r,child: Image.asset("assets/website/auth_screen/Ellipse 11.png"),),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non eni',
                            style: AppTextStyles.mulishStyle.copyWith( color: const Color(0xFF8E8E93),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.27,)
                        ),
                      )


                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
                    Text(
                        'Jessica',
                        style: AppTextStyles.mulishStyle.copyWith(  color: const Color(0xFF262626),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    ),
                    SizedBox(width: 20.w,),
                    Row(children: List.generate(5, (index)=> Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.star,color: Color(0xffFFB903),),
                    )),),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text(
                          '5.0',
                          style: AppTextStyles.mulishStyle.copyWith(color: Color(0xFF8E8E93),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.27,)
                      ),
                    ),
                    Text(
                        '2 weeks ago',
                        textAlign: TextAlign.right,
                        style:AppTextStyles.mulishStyle.copyWith(color: Color(0x7F18A0FB),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.27,)
                    )
                  ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
    );
  }
}
