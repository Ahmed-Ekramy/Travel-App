import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class IconLogin extends StatelessWidget {
  final String imageIcon;

  const IconLogin({super.key, required this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 80.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF3F3F3)),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child:SvgPicture.asset(imageIcon),
    );
  }
}