import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/text_style.dart';

class CustomItemListViewSetting extends StatelessWidget {

final String? text;
final String textItem;
final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border:Border.all(color: Colors.indigoAccent)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(image),
              SizedBox(
                width: 15.w,
              ),
              Text(
                textItem,
                style: readexPro16w700(),
              ),
            ],
          ),
          Row(
            children: [
              Text(text??"", style: readexPro14w400()),
              const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),

            ],
          ),

        ],
      ),
    );
  }

const CustomItemListViewSetting({super.key,  this.text, required this.textItem,required this.image});
}
