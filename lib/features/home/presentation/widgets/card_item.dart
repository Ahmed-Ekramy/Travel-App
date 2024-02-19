import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/text_style.dart';

class CardItem extends StatelessWidget {

  const CardItem(this.image,this.text, {super.key});

  final String image;
  final  String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        width: 146.w,
        height: 200.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow:  [
            BoxShadow(
            color: const Color(0x0F000000),
        blurRadius: 50.r,
      )],
        ),
        child: Column(

            children: [
              SvgPicture.asset(image),
              SizedBox(height: 11.h,),
              Text(
                text,
                textAlign: TextAlign.center,
                style: readexPro24w700(),
              )
            ]),
      ),
    );
  }
}
