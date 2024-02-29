import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/shard_widget/button.dart';
import 'package:travel_app/core/shard_widget/text_form_field.dart';
import 'package:travel_app/core/theming/text_style.dart';
import '../../../flight/presentation/manager/flight_cubit.dart';
import '../widgets/item_list_last_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({required this.hintText1,
    required this.roundTrip,
    super.key});

  final String hintText1;
  final String roundTrip;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FlightCubit, FlightState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0.h, horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextFormField(
                    // controller: SearchCubit.get(context).searchController,
                    hintText: hintText1,
                    icon: TextInputAction.search,
                    onChanged: (r) {
                      FlightCubit.get(context).location(name: r);
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Latest Searches  ",
                    style: readexPro16w700(),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.manual,
                      itemBuilder: (context, index) =>
                          InkWell(
                            onTap: () {
                              if (roundTrip == "GoingDeparture") {
                                FlightCubit.get(context).onSelectDeparture(
                                    " ${FlightCubit
                                        .get(context)
                                        .searchList[index].name}");
                              } else if (roundTrip == "GoingArrival") {
                                FlightCubit.get(context).onSelectArrival(
                                    " ${FlightCubit
                                        .get(context)
                                        .searchList[index].name}");
                              } else if (roundTrip == "RoundDeparture") {
                                FlightCubit.get(context)
                                    .onSelectDepartureRoundTrip("${FlightCubit
                                    .get(context)
                                    .searchList[index].name}");
                              }else if(roundTrip == "RoundArrival"){
                                FlightCubit.get(context)
                                    .onSelectArrivalRound("${FlightCubit
                                    .get(context)
                                    .searchList[index].name}");
                              }
                              Navigator.pop(context);
                            },
                            child: ItemListSameSearch(
                              searchList:
                              FlightCubit
                                  .get(context)
                                  .searchList[index],
                            ),
                          ),
                      itemCount: FlightCubit
                          .get(context)
                          .searchList
                          .length,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const CustomButton(
                    nameButton: 'Search',
                    heightButton: 60,
                    colorButton: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
