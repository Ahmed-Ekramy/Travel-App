import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/route.dart';
import 'card_item.dart';

class StackHotelsOrFlightAndImage extends StatelessWidget {
  const StackHotelsOrFlightAndImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          "assets/images/sky33.jpg",
          width: double.infinity,
        ),
        Positioned(
          right: 2.w,
          left: 4.w,
          bottom: -60.h,
          child: Row(
            children: [
              CardItem("assets/svg/hotel.svg", "Hotels".tr()),
              SizedBox(
                width: 74.w,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.flightScreen);
                  },
                  child:  CardItem("assets/svg/Plane.svg", "Flight".tr())),
            ],
          ),
        )
      ],
    );
  }
}
