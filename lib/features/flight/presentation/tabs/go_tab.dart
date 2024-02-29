import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/features/flight/presentation/manager/flight_cubit.dart';
import '../../../../core/shard_widget/shard_widget.dart';
import '../widgets/go_item.dart';

class GoTab extends StatelessWidget {
  const GoTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlightCubit, FlightState>(
  builder: (context, state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.search, arguments: {
                      "name": 'Select country of departure',
                      "searchType":"GoingDeparture",
                      "Bloc": BlocProvider.of<FlightCubit>(context)
                    });
                  },
                  child: GoItem(
                      image: "assets/svg/Air Shipping.svg",
                      text1: 'Departure',
                      text2: FlightCubit.get(context).nameDeparture.isEmpty
                          ? "Select country of departure"
                          : FlightCubit.get(context).nameDeparture),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.search, arguments: {
                      "name": 'Choose a country of arrival',
                      "searchType":"GoingArrival",
                      "Bloc":  BlocProvider.of<FlightCubit>(context)
                    });
                  },
                  child: GoItem(
                      image: "assets/svg/Airplane.svg",
                      text1: 'arrival',
                      text2: FlightCubit.get(context).nameArrival.isEmpty
                          ? 'Choose a country of arrival'
                          : FlightCubit.get(context).nameArrival),
                ),
                InkWell(
                  onTap: () {
                    FlightCubit.get(context).chooseGoRoundDate(context);
                  },
                  child:  GoItem(
                      image: "assets/svg/calendar-edit.svg",
                      text1: 'Departure Date',
                      text2: "${FlightCubit.get(context).selectedGoDate}".substring(0,10)),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.passengers,arguments: {
                        "Bloc": BlocProvider.of<FlightCubit>(context),
                        "sumFun":true
                      });
                    },
                    child:  GoItem(
                        image: "assets/svg/user-info.svg",
                        text1: "Number of passengers",
                        text2: "${FlightCubit.get(context).sumNumPass()}")),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.economicDegree);
                  },
                  child: const GoItem(
                      image: "assets/svg/Flight Seat.svg",
                      text1: " Travel class",
                      text2: "Economic degree"),
                ),
                SizedBox(
                  height: 350.h,
                ),
                elevatedButton(),
              ],
            ),
          ));
  },
);
  }

}
