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
            image: "assets/svg/Air Shipping.svg",
            text1: 'Departure',
            text2: 'Select country of departure',
          ),
          const GoItem(
              image: "assets/svg/Airplane.svg", text1: 'arrival', text2: 'Choose a country of arrival'),
          const GoItem(image: "assets/svg/calendar-edit.svg", text1: 'Departure Date',
              text2: 'Select Date'),
          const GoItem(image: "assets/svg/calendar-edit.svg", text1: 'Return Date',
              text2: 'Select Date'),
          const GoItem(image: "assets/svg/user-info.svg", text1: 'Number of passengers', text2: '1 Adult'),
          const GoItem(
              image: "assets/svg/Flight Seat.svg", text1: 'Travel class', text2:'Economic degree'),
          SizedBox(height: 220.h,),
          elevatedButton(),
        ],
      ),
    );
  }
}
