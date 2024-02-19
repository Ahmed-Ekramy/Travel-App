import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/text_style.dart';

Row maxMinItem() {
  return Row(
    children: [
      const Icon(
        FontAwesomeIcons.circleMinus,
        size: 30,
        color: Color(0xff001A72),
      ),
      SizedBox(
        width: 10.w,
      ),
      Text(
        "1",
        style: readexPro12w400().copyWith(
            color: Colors.black, fontWeight: FontWeight.w500),
      ),
      SizedBox(
        width: 10.w,
      ),
      const Icon(
        Icons.add_circle_outline,
        size: 30,
        color: Color(0xff001A72),
      ),
    ],
  );
}
