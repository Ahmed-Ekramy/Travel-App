import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
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
                  left: 4,
                  bottom: -60,
                  child: Row(
                    children: [
                      const CardItem("assets/svg/hotel.svg", "Hotels"),
                      SizedBox(
                        width: 74.w,
                      ),
                       InkWell(
                           onTap: () {
                             Navigator.pushNamed(context, Routes.flightScreen);
                           },
                           child: const CardItem("assets/svg/Plane.svg", "Offers")),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 150.h,
            ),
            const RowItem(
              text1: 'Best Offers',
            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),
            SizedBox(height: 35.h,),
            const RowItem(
              text1: 'Tourist trips to Europe',

            ),
            SizedBox(
              height: 16.h,
            ),
            const ListViewBuilder(),
             SizedBox(height: 35.h,),
            const RowItem(
              text1: 'Tourist trips inside Egypt',


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
