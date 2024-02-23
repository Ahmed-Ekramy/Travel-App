import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/shard_widget/button.dart';
import 'package:travel_app/core/shard_widget/text_form_field.dart';
import 'package:travel_app/core/theming/text_style.dart';
import 'package:travel_app/features/search_screen/presentation/manager/search_cubit.dart';
import '../widgets/item_list_last_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({required this.hintText1, super.key});

  final String hintText1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0.h, horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextFormField(
                    hintText: hintText1,
                    onChanged: (p) {
                      SearchCubit.get(context).location(name: p);
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
                    child:  ListView.builder(
                      itemBuilder: (context, index) =>
                           ItemListSameSearch(
                             searchList: SearchCubit.get(context).searchList[index], ),
                      itemCount: SearchCubit.get(context).searchList.length,
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
          );
        },
      ),
    );
  }
}
