import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_style.dart';

class TravelClass extends StatelessWidget {
  const TravelClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0.w),
            child: Text(
              "عدد المسافرين",
              style: readexPro16w700().copyWith(fontSize: 20.sp),
            ),
          )        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.w,vertical: 22.h),
          padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
          width: 359,
          height: 208,
          decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(

crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween
            ,

            children: [
              Text(
                  'الدرجة الاقتصادية',
                  textAlign: TextAlign.center,
                  style:readexPro16w700()
              ),
              const SizedBox(height: 16),
              Text(
                  'الدرجة السياحية المتميزة',
                  textAlign: TextAlign.center,
                  style:readexPro16w700()
              ),
              const SizedBox(height: 16),
              Text(
                  'درجة رجال الاعمال',
                  textAlign: TextAlign.center,
                  style:readexPro16w700()
              ),
              const SizedBox(height: 16),
              Text(
                  'الدرجة الاولي',
                  textAlign: TextAlign.center,
                  style:readexPro16w700()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
