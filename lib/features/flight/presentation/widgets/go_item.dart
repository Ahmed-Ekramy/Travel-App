import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/theming/text_style.dart';

class GoItem extends StatelessWidget {
  const GoItem(this.image, this.text1, this.text2, {super.key});

  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(text1,
                  textAlign: TextAlign.center,
                  style: readexPro12w400()
                      .copyWith(fontSize: 14.sp, color: Colors.grey)),
              SizedBox(
                height: 20.h,
              ),
              Text(text2,
                  textAlign: TextAlign.center,
                  style:
                      readexPro16w700().copyWith(fontWeight: FontWeight.w500))
            ],
          ),
          SizedBox(
            width: 18.w,
          ),
          SvgPicture.asset(image),
        ],
      ),
    );
  }
}
