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
            'Departure',
            'Select country of departure',
          ),
          const GoItem(
              "assets/svg/Airplane.svg", 'arrival', 'Choose a country of arrival'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GoItem("assets/svg/calendar-edit.svg", 'Departure Date',
                  'Select Date'),
              GoItem("assets/svg/calendar-edit.svg", 'Return Date',
                  'Select Date'),
            ],
          ),
          const GoItem("assets/svg/user-info.svg", 'Number of passengers', '1 Adult'),
          const GoItem(
              "assets/svg/Flight Seat.svg", 'Travel class', 'Economic degree'),
          const Expanded(child: SizedBox()),
          elevatedButton(),
        ],
      ),
    );
  }
}
