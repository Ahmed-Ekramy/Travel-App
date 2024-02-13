import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/text_style.dart';

class ContainerProf extends StatelessWidget {
  final String image;
  final String textItem;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          SvgPicture.asset(image),
          SizedBox(
            width: 15.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textItem,
                style: readexPro16w700(),
              ),
              Text(text, style: readexPro14w400())
            ],
          ),
        ],
      ),
    );
  }

  const ContainerProf(
      {super.key,
        required this.image,
        required this.textItem,
        required this.text});
}
