import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/shard_widget/text_form_field.dart';

import '../widgets/column_offer.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            child: Image.asset(
              "assets/images/fly.jpg",
              width: double.infinity,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 10.h)),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0.w),
          child: const AppTextFormField(),
        )),
        SliverToBoxAdapter(child: SizedBox(height: 20.h)),
        const SliverToBoxAdapter(child: ColumnListView('استمتع بأفضل العروض')),
        const SliverToBoxAdapter(
          child: ColumnListView(
            'عروض علي الرحلات السياحيه',
          ),
        ),
      ],
    );
  }
}
