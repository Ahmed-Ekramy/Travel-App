import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/shard_widget/shard_widget.dart';
import '../widgets/go_item.dart';

class GoAndBackTabs extends StatelessWidget {
  const GoAndBackTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
      child: Column(
        children: [
          const GoItem(
            "assets/svg/Air Shipping.svg",
            'المغادرة',
            'اختار بلد المغادرة',
          ),
          const GoItem(
              "assets/svg/Airplane.svg", 'الوصول', 'اختيار بلد الوصول'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GoItem("assets/svg/calendar-edit.svg", 'تاريخ المغادرة',
                  'اختر التاريخ'),
              GoItem("assets/svg/calendar-edit.svg", 'تاريخ العودة',
                  'اختر التاريخ'),
            ],
          ),
          const GoItem("assets/svg/user-info.svg", 'عدد المساغرين', '1 بالغ'),
          const GoItem(
              "assets/svg/Flight Seat.svg", 'درجه السفر', 'درجه اقتصلديه'),
          const Expanded(child: SizedBox()),
          elevatedButton(),
        ],
      ),
    );
  }
}
