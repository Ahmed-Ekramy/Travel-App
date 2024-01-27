import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_style.dart';
import 'list_view_offer.dart';

class ColumnListView extends StatelessWidget {

 final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,

      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
              text,
              textAlign: TextAlign.center,
              style: readexPro16w700()
          ),
        ),
        SizedBox(height: 20.h),
        ListViewOffer(),
        SizedBox(height: 20.h),
      ],);
  }

  ColumnListView(this.text, {super.key});
}
