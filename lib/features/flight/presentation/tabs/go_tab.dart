import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/features/search_screen/presentation/manager/search_cubit.dart';
import '../../../../core/shard_widget/shard_widget.dart';
import '../widgets/go_item.dart';

class GoTab extends StatelessWidget {
  const GoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 30.h),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.search, arguments: {
                      "name": 'Select country of departure',
                    });
                  },
                  child: GoItem(
                      image: "assets/svg/Air Shipping.svg",
                      text1: 'Departure',
                      text2: SearchCubit.get(context).name.isEmpty
                          ? "Select country of departure"
                          : SearchCubit.get(context).name),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.search,
                        arguments: {"name": 'Choose a country of arrival'});
                  },
                  child: const GoItem(
                      image: "assets/svg/Airplane.svg",
                      text1: 'arrival',
                      text2: 'Choose a country of arrival'),
                ),
                const GoItem(
                    image: "assets/svg/calendar-edit.svg",
                    text1: 'Departure Date',
                    text2: 'Select Date'),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.passengers);
                    },
                    child: const GoItem(
                        image: "assets/svg/user-info.svg",
                        text1: "Number of passengers",
                        text2: "1 Adult")),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.travelClass);
                  },
                  child: const GoItem(
                      image: "assets/svg/Flight Seat.svg",
                      text1: " Travel class",
                      text2: "Economic degree"),
                ),
             SizedBox(height: 350.h,),
                elevatedButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}
