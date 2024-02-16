import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shard_widget/text_form_field.dart';
import 'column_offer.dart';

class CustomOfferTab extends StatelessWidget {
  const CustomOfferTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 270.0.h),
      child: Container(
        decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.r),
                topLeft: Radius.circular(40.r))),
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 20.h)),
              SliverToBoxAdapter(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: AppTextFormField(
                    preIcon: const Icon(Icons.search_rounded,
                        size: 30, color: Colors.grey),
                    hintText: "${"Search".tr()}..",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.r),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.r),
                        borderSide: const BorderSide(color: Colors.blueAccent)
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20.h)),
               SliverToBoxAdapter(
                  child: ColumnListView('Enjoy the best deals'.tr())),
               SliverToBoxAdapter(
                child: ColumnListView(
                  'Offers on tourist trips'.tr(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
