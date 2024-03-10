import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/features/flight/data/models/search_tic_model.dart';
import 'package:travel_app/features/flight/presentation/manager/flight_cubit.dart';
import '../../../../core/shard_widget/button.dart';
import '../../../../core/shard_widget/shard_widget.dart';
import '../../../../main.dart';
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
                        "searchType": "GoingDeparture",
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
                        "searchType": "GoingArrival",
                        "Bloc": BlocProvider.of<FlightCubit>(context)
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
                      FlightCubit.get(context).chooseGoDate(context);
                    },
                    child: GoItem(

                        image: "assets/svg/calendar-edit.svg",
                        text1: 'Departure Date',
                        text2:formatDateTimeRange(FlightCubit.get(context).selectedGoDate).substring(0,11),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.passengers,
                            arguments: {
                              "Bloc": BlocProvider.of<FlightCubit>(context),
                              "sumFun": "sumNumPassGo"
                            });
                      },
                      child: GoItem(
                          image: "assets/svg/user-info.svg",
                          text1: "Number of passengers",
                          text2: "${FlightCubit.get(context).sumNumPass()}")),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.economicDegree,
                          arguments: {
                            "Bloc": BlocProvider.of<FlightCubit>(context),
                            "nameClass": "Select Travel Go Class"
                          });
                    },
                    child: GoItem(
                        image: "assets/svg/Flight Seat.svg",
                        text1: " Travel class",
                        text2: FlightCubit.get(context).nameTravelClass.isEmpty
                            ? 'Select Travel class'
                            : FlightCubit.get(context).nameTravelClass
                    ),
                  ),
                  SizedBox(
                    height: 200.h,
                  ),
                  CustomButton(
                    colorButton: Colors.blue,
                    heightButton: 50,
                    nameButton: "Search",
                    onPressed: () {
                      FlightCubit.get(context).searchTick(
                        flyFrom: FlightCubit.get(context).codeDeparture,
                        flyTo: FlightCubit.get(context).codeArrival,
                        dateFrom:formatDateTimeRange(FlightCubit.get(context).selectedGoDate).substring(0,11),
                      );
                      // dateFrom: "${FlightCubit.get(context).selectedGoDate}"
                      //     .substring(0, 10),
                      // dateTo: "${FlightCubit.get(context).selectedGoDate}"
                      //     .substring(26, 37));
                    },
                  )
                ],
              ),
            ));
      },
    );
  }
}
