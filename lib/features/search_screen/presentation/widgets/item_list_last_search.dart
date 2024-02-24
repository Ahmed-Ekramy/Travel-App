import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/text_style.dart';
import '../../domain/entities/search_entity.dart';

class ItemListSameSearch extends StatelessWidget {
  const ItemListSameSearch({
    super.key,
    required this.searchList,
  });

  final LocationsEntity searchList;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset("assets/svg/location.svg"),
      SizedBox(
        width: 10.w,
      ),
      Flexible(
          child: Text("${searchList.name}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: readexPro14w400())),
    ]);
  }
}
