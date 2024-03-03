import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/theming/text_style.dart';
import 'package:travel_app/features/flight/presentation/manager/flight_cubit.dart';

class NumberOfPassengers extends StatelessWidget {
   const NumberOfPassengers({ required this.nameFun,Key? key}) : super(key: key);
final String nameFun;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FlightCubit, FlightState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
      appBar: AppBar( actions: [
        Padding(
          padding: EdgeInsets.only(right: 12.0.w),
          child: Text(
            "Number of passengers".tr(),
            style: readexPro16w700().copyWith(fontSize: 20.sp),
          ),
        )
      ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 45.h),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/couple.svg"),
              Column(
                children: [
                  Text(
                    'Adult'.tr(),
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text('Older than 12 years'.tr(),
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).minAdult();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).minAdultRound();
                      }

                    },
                    child: const Icon(
                      FontAwesomeIcons.circleMinus,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),

                  Text(
                    "${nameFun=="sumNumPassGo"? FlightCubit.get(context).numAdult:FlightCubit.get(context).numAdultRound}",
                    style: readexPro12w400().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).maxAdult();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).maxAdultRound();
                      }
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/Child.svg"),
              Column(
                children: [
                  Text(
                    'child'.tr(),
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text(' From 2 to 12 years old'.tr(),
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).minChild();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).minChildRound();
                      }
                    },
                    child: const Icon(
                      FontAwesomeIcons.circleMinus,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "${nameFun=="sumNumPassGo"? FlightCubit.get(context).numChild:FlightCubit.get(context).numChildRound}",
                    style: readexPro12w400().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).maxChild();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).maxChildRound();
                      }
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/Baby.svg"),
              Column(
                children: [
                  Text(
                    'baby'.tr(),
                    textAlign: TextAlign.center,
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Text('Less than two years'.tr(),
                      textAlign: TextAlign.center,
                      style: readexPro12w400().copyWith(color: Colors.grey))
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).minBaby();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).minBabyRound();
                      }                    },
                    child: const Icon(
                      FontAwesomeIcons.circleMinus,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "${nameFun=="sumNumPassGo"? FlightCubit.get(context).numBaby:FlightCubit.get(context).numBabyRound}",
                    style: readexPro12w400().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).maxBaby();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).maxBabyRound();
                      }
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Text('Bags'.tr(), textAlign: TextAlign.right, style: readexPro16w700()),
          SizedBox(height: 25.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SvgPicture.asset("assets/svg/cart-1.svg"),
            Text(
              'Aircraft cabin bags'.tr(),
              textAlign: TextAlign.center,
              style: readexPro16w700()
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).minAircraftBag();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).minAircraftBagRound();
                      }
                    },
                    child: const Icon(
                      FontAwesomeIcons.circleMinus,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "${nameFun=="sumNumPassGo"? FlightCubit.get(context).numAircraftBag:FlightCubit.get(context).numAircraftBagRound}",
                    style: readexPro12w400().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).maxAircraftBag();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).maxAircraftBagRound();
                      }
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                ],
              ),
          ],),
          SizedBox(height: 18.h,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
            SvgPicture.asset("assets/svg/cart-1.svg"),
            Text(
                'Checked Baggage'.tr(),
              textAlign: TextAlign.center,
              style: readexPro16w700()
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).minCheckBags();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).minCheckBagsRound();
                      }
                    },
                    child: const Icon(
                      FontAwesomeIcons.circleMinus,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(

                    "${nameFun=="sumNumPassGo"? FlightCubit.get(context).numCheckBag:FlightCubit.get(context).numCheckBagRound}",

                    style: readexPro12w400().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      if(nameFun=="sumNumPassGo"){
                        FlightCubit.get(context).maxCheckBags();
                      }else if(nameFun=="sumNumPassRound"){
                        FlightCubit.get(context).maxCheckBagsRound();
                      }
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 30,
                      color: Color(0xff001A72),
                    ),
                  ),
                ],
              ),
          ],),
        ]),
      ),
    );
  },
);
  }
}
