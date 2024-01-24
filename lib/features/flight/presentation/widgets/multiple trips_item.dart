import 'package:flutter/material.dart';
import 'package:travel_app/features/flight/presentation/widgets/trip_item.dart';

class MultipleTripsItem extends StatelessWidget {
  const MultipleTripsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TripItems(text: 'التاريخ'),
        TripItems(text: "الى"),
        TripItems(text: "من"),

      ],
    );
  }
}


