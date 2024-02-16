import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/listview_builder.dart';
import '../widgets/row_item.dart';
import '../widgets/stack_hotels_or_flight_and_image.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const StackHotelsOrFlightAndImage(),
            SizedBox(
              height: 150.h,
            ),
             RowItem(
              text1: 'Best Offers'.tr(),
            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),
            SizedBox(height: 35.h,),
             RowItem(
              text1: 'Tourist trips to Europe'.tr(),

            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),
             SizedBox(height: 35.h,),
             RowItem(
              text1: 'Tourist trips inside Egypt'.tr(),
            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),
            SizedBox(
              height: 150.h,
            ),
          ],
        ),
      ),
    );
  }
}

