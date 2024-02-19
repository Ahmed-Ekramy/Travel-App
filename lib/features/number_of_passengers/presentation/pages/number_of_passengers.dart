import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/theming/text_style.dart';
import '../widgets/max_min_item.dart';

class NumberOfPassengers extends StatelessWidget {
  const NumberOfPassengers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( actions: [
        Padding(
          padding: EdgeInsets.only(right: 12.0.w),
          child: Text(
            "Number of passengers".tr(),
            style: readexPro16w700().copyWith(fontSize: 20.sp),
          ),
        )
      ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 45.h),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/couple.svg"),
              Column(
                children: [
                  Text(
                    'Adult'.tr(),
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text('Older than 12 years'.tr(),
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              maxMinItem(),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/Child.svg"),
              Column(
                children: [
                  Text(
                    'child'.tr(),
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text(' From 2 to 12 years old'.tr(),
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              maxMinItem(),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/Baby.svg"),
              Column(
                children: [
                  Text(
                    'baby'.tr(),
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text('Less than two years'.tr(),
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              maxMinItem(),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Text('Bags'.tr(), textAlign: TextAlign.right, style: readexPro16w700()),
          SizedBox(height: 25.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SvgPicture.asset("assets/svg/cart-1.svg"),
            Text(
              'Aircraft cabin bags'.tr(),
              textAlign: TextAlign.center,
              style: readexPro16w700()
              ),

            maxMinItem(),
          ],),
          SizedBox(height: 18.h,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
            SvgPicture.asset("assets/svg/cart-1.svg"),
            Text(
                'Checked Baggage'.tr(),
              textAlign: TextAlign.center,
              style: readexPro16w700()
              ),
            maxMinItem(),
          ],),
        ]),
      ),
    );
  }
}
