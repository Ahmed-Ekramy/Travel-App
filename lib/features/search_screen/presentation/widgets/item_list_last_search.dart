import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/text_style.dart';

class ItemListLastSearch extends StatelessWidget {
  const ItemListLastSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset("assets/svg/location.svg"),
      SizedBox(
        width: 10.w,
      ),
      Text("Egypt", style: readexPro14w400()),
    ]);
  }
}
