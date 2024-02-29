import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/features/search_screen/presentation/pages/search_screen.dart';
import '../../../../core/shard_widget/shard_widget.dart';
import '../manager/flight_cubit.dart';
import '../widgets/go_item.dart';

class GoAndBackTabs extends StatelessWidget {
  const GoAndBackTabs({Key? key}) : super(key: key);
final bool x=false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlightCubit, FlightState>(
  builder: (context, state) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.search, arguments: {
                  "name": 'Choose a country of arrival',
                  "searchType": "RoundDeparture",
                  "Bloc": BlocProvider.of<FlightCubit>(context)
                });
              },
              child: GoItem(
                  image: "assets/svg/Air Shipping.svg",
                  text1: 'Departure',
                  text2: FlightCubit.get(context).nameDepartureRoundTrip.isEmpty
                      ? "Select country of departure"
                      : FlightCubit.get(context).nameDepartureRoundTrip),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.search, arguments: {
                  "name": 'Choose a country of arrival',
                  "searchType": "RoundArrival",
                  "Bloc": BlocProvider.of<FlightCubit>(context)
                });
              },
              child: GoItem(
                  image: "assets/svg/Airplane.svg",
                  text1: 'arrival',
                  text2: FlightCubit.get(context).nameArrivalRound.isEmpty
                      ? "Choose a country of arrival"
                      : FlightCubit.get(context).nameArrivalRound),
            ),
            InkWell(
              onTap: () {
                FlightCubit.get(context).chooseGoRoundDate(context);
              },
              child:  GoItem(
                  image: "assets/svg/calendar-edit.svg",
                  text1: 'Departure Date',
                  text2: '${FlightCubit.get(context).selectedGoRoundDate}'.substring(0,10)),
            ),
            InkWell(
              onTap: () {
                FlightCubit.get(context).chooseBackRoundDate(context);
              },
              child:  GoItem(
                  image: "assets/svg/calendar-edit.svg",
                  text1: 'Return Date',
                  text2: '${FlightCubit.get(context).selectedBackRoundDate}'.substring(0,10)),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.passengers,arguments: {
                  "Bloc": BlocProvider.of<FlightCubit>(context),
                  "sumFun":false
                });
              },
              child:  GoItem(
                  image: "assets/svg/user-info.svg",
                  text1: 'Number of passengers',
                  text2:"${FlightCubit.get(context).sumNumPass()}"),
            ),
            const GoItem(
                image: "assets/svg/Flight Seat.svg",
                text1: 'Travel class',
                text2: 'Economic degree'),
            SizedBox(
              height: 230.h,
            ),
            elevatedButton(),
          ],
        ),
      ),
    );
  },
);
  }
}
