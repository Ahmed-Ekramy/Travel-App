import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/features/flight/presentation/manager/flight_cubit.dart';

import '../../../../core/theming/text_style.dart';
import '../widgets/travel_class_item.dart';

class EconomicDegree extends StatelessWidget {
  const EconomicDegree({Key? key,required this.nameClass}) : super(key: key);
 final String nameClass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.0.w),
            child: Text(
              "Travel class",
              style: readexPro16w700().copyWith(fontSize: 20.sp),
            ),
          )
        ],
      ),
      body: BlocBuilder<FlightCubit, FlightState>(
        builder: (context, state) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: ListView.builder(
                itemBuilder: (context, index) {
              return   TravelItemClass(
                isSelected: FlightCubit.get(context).selectedClass==FlightCubit.get(context).travelClass[index].id,
                    title: FlightCubit
                        .get(context)
                        .travelClass[index].name,
                    value: FlightCubit
                      .get(context)
                      .travelClass[index].id, name: nameClass,);
                },
                itemCount: FlightCubit
                    .get(context)
                    .travelClass
                    .length,
              ));
        },
      ),
    );
  }
}
