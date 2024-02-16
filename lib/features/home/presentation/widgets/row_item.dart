import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_style.dart';

class RowItem extends StatelessWidget {
  const RowItem({
    super.key, required this.text1,
  });
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
          text1,
            textAlign: TextAlign.center,
            style: readexPro16w700(),
          ),
          Text(
            'Show all'.tr(),
            textAlign: TextAlign.center,
            style: readexPro12w400(),
          ),
        ],
      ),
    );
  }
}