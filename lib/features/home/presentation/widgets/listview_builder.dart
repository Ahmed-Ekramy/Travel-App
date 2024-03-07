import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'listview_item.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
          child: const FittedBox(child: ListViewItem()),
        ),
        itemCount: 10,
      ),
    );
  }
}
