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
        width: 220,
        height: 147,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Image.asset(
            "assets/images/listview.png",width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text('رحلة الي الجيزه',
                textAlign: TextAlign.center, style: readexPro16w700()),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text('بدأ من 15.000 جنيه',
                textAlign: TextAlign.center, style: readexPro11w400()),
          ),
        ]),
      ),
    );
  }
}
