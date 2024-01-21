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
      shadowColor: Colors.grey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(
          "assets/images/listview.png",
        ),
        Text('رحلة الي الجيزه',
            textAlign: TextAlign.center, style: readexPro16w700()),
        SizedBox(height: 8.h,),
        Text('بدأ من 15.000 جنيه',
            textAlign: TextAlign.center, style: readexPro11w400()),
      ]),
    );
  }
}
