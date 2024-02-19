import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_style.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.white,
      child: Container(
        width: 220.w,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            "assets/images/listview.png",width: double.infinity,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 8.0.w),
            child: Text('A trip to Giza',
                textAlign: TextAlign.center, style: readexPro16w700()),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 8.0.w),
            child: Text('From 15.000 EGP',
                textAlign: TextAlign.center, style: readexPro11w400()),
          ),
        ]),
      ),
    );
  }
}
