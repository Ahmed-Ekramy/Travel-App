import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/card_item.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset("assets/images/Group sky.png",
                  width: double.infinity,),
             Positioned(
               right: 2,
               left: 2,
               bottom: -60,
               child: Row(children: [
                 const CardItem("assets/svg/Offer.svg","العروض"),
                 SizedBox(width: 74.w,),
                 const CardItem("assets/svg/Plane.svg","طيران"),
               ],),
             )
            ],
          )
        ],
      ),
    );
  }
}

