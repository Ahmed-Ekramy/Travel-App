import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/features/flight/presentation/widgets/trip_item.dart';

class MultipleTripsItem extends StatelessWidget {
  const MultipleTripsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TripItems(text: 'Date'.tr()),
        TripItems(text: "to".tr()),
        TripItems(text: "from".tr()),

      ],
    );
  }
}


