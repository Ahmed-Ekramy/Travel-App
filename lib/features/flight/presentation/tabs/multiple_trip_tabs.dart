import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/multiple trips_item.dart';

class MultipleTripTab extends StatelessWidget {
  const MultipleTripTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0.h),
            child: const MultipleTripsItem(),
          ),
          itemCount: 2,
        ),
      ),
      // Expanded(
      //   child: Row(
      //     children: [
      //       const Icon(Icons.add_circle_outline),
      //       Text(
      //         'اضافه رحلة اخري',
      //         style: readexPro16w700().copyWith(color: Color(0xFF1C98DE)),
      //       )
      //     ],
      //   ),
      // )
    ]);
  }
}
