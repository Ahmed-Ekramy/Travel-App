import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';

import 'listview_item.dart';

class ListViewOffer extends StatelessWidget {
  const ListViewOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  InkWell(
            onTap: () {
              Navigator.pushNamed(context, Routes.offerDetailScreen);
            },
            child: const ListViewItem()),
        itemCount: 5,
      ),
    );
  }
}
