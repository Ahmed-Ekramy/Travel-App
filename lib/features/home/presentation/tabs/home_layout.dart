import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/card_item.dart';
import '../widgets/listview_builder.dart';
import '../widgets/row_item.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/images/sky33.jpg",
                  width: double.infinity,
                ),
                Positioned(
                  right: 2,
                  left: 2,
                  bottom: -60,
                  child: Row(
                    children: [
                      const CardItem("assets/svg/Offer.svg", "العروض"),
                      SizedBox(
                        width: 74.w,
                      ),
                      const CardItem("assets/svg/Plane.svg", "طيران"),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 150.h,
            ),
            const RowItem(
              text1: 'افضل العروض',
            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),
            SizedBox(height: 35.h,),
            const RowItem(
              text1: 'رحلات سياحية الي اوروبا',

            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),
             SizedBox(height: 35.h,),
            const RowItem(
              text1: 'رحلات سياحية داخل مصر',


            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),

          ],
        ),
      ),
    );
  }
}
