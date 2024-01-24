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
          padding: EdgeInsets.only(right: 8.0.w),
          child: Text(
            "عدد المسافرين",
            style: readexPro16w700().copyWith(fontSize: 20),
          ),
        )
      ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 45.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              maxMinItem(),
              Column(
                children: [
                  Text(
                    'بالغ',
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text('اكبر من 12 سنه',
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset("assets/svg/couple.svg"),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              maxMinItem(),
              Column(
                children: [
                  Text(
                    'طفل',
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text(' من 2الى 12 سنه',
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset("assets/svg/Child.svg"),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              maxMinItem(),
              Column(
                children: [
                  Text(
                    'رضيع',
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text('اقل من سنتين',
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset("assets/svg/Baby.svg"),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Text('الحقائب', textAlign: TextAlign.right, style: readexPro16w700()),
          SizedBox(height: 25.h,),
          Row(children: [
            maxMinItem(),
            Text(
              'حقائب مقصورة الطائرة',
              textAlign: TextAlign.center,
              style: readexPro16w700()
              ),
            SizedBox(width: 10.w,),
            SvgPicture.asset("assets/svg/cart-1.svg"),
          ],),
          SizedBox(height: 18.h,),
          Row(children: [
            maxMinItem(),
            Text(
                'الحقائب المسجلة',
              textAlign: TextAlign.center,
              style: readexPro16w700()
              ),
            SizedBox(width: 10.w,),
            SvgPicture.asset("assets/svg/cart-1.svg"),
          ],),
        ]),
      ),
    );
  }
}
