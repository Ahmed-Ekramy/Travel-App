import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import '../widgets/item_listView_setting.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.w),
        child:  SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.prof);
                },
                child: const CustomItemListViewSetting(
                  image: "assets/svg/user-1.svg",
                  text: "Ahmed Ekramy",
                  textItem: "Profile",
                ),
              ),
               CustomItemListViewSetting(
                image: "assets/svg/money.svg",
                text: "\$ dollar",
                textItem: "Currency".tr(),
              ),
               CustomItemListViewSetting(
                image: "assets/svg/Language.svg",
                text: "Egypt",
                textItem: "Country".tr(),
              ),
               CustomItemListViewSetting(
                image: "assets/svg/trans.svg",
                text: "English",
                textItem: "Language ".tr(),
              ),
               CustomItemListViewSetting(
                image: "assets/svg/Information.svg",
                textItem: "Who are we".tr(),
              ),
              SizedBox(height: 20.h,),
               CustomItemListViewSetting(
                image: "assets/svg/Facebook2.svg",
                textItem: "Subscribe to our Facebook ".tr(),
              ),
               CustomItemListViewSetting(
                image: "assets/svg/Instagram.svg",
                textItem: "Follow us on Instagram".tr(),
              ),
               CustomItemListViewSetting(
                image: "assets/svg/X Logo.svg",
                textItem: "Follow us on X".tr(),
              ),
               CustomItemListViewSetting(
                image: "assets/svg/Youtube.svg",
                textItem: "Subscribe to our YouTube".tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
