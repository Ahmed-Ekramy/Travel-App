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
        padding: const EdgeInsets.all(10),
        width: 146.w,
        height: 200.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
            BoxShadow(
            color: Color(0x0F000000),
        blurRadius: 50,
        offset: Offset(0, 1),
        spreadRadius: 0,
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
