import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import '../../../../core/shard_widget/shard_widget.dart';
import '../widgets/go_item.dart';

class GoTab extends StatelessWidget {
  const GoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 30.h),
      child: Column(
        children: [
          const GoItem(
            "assets/svg/Air Shipping.svg",
            'المغادرة',
            'اختار بلد المغادرة',
          ),
          const GoItem(
              "assets/svg/Airplane.svg", 'الوصول', 'اختيار بلد الوصول'),
          const GoItem(
              "assets/svg/calendar-edit.svg", 'تاريخ المغادرة', 'اختر التاريخ'),
          InkWell(
              onTap: () {
Navigator.pushNamed(context, Routes.passengers);
              },
              child: const GoItem(
                  "assets/svg/user-info.svg", 'عدد المساغرين', '1 بالغ')),
          InkWell(
            child: const GoItem(
                "assets/svg/Flight Seat.svg", 'درجه السفر', 'درجه اقتصلديه'),
          ),
          const Expanded(child: SizedBox()),
          elevatedButton(),
        ],
      ),
    );
  }
}
