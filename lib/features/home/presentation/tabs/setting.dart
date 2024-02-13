import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/core/theming/text_style.dart';
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
              const CustomItemListViewSetting(
                image: "assets/svg/money.svg",
                text: "\$ dollar",
                textItem: "Currency",
              ),
              const CustomItemListViewSetting(
                image: "assets/svg/Language.svg",
                text: "Egypt",
                textItem: "Country",
              ),
              const CustomItemListViewSetting(
                image: "assets/svg/trans.svg",
                text: "English",
                textItem: "Language ",
              ),
              const CustomItemListViewSetting(
                image: "assets/svg/Information.svg",
                textItem: "Who are we",
              ),
              // SizedBox(height: 20.h,),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
              //   child: Text("Join our community to travel \nand follow the latest trips",style: readexPro14w400()),
              // ),
              SizedBox(height: 20.h,),
              const CustomItemListViewSetting(
                image: "assets/svg/Facebook2.svg",
                textItem: "Subscribe to our Facebook ",
              ),
              const CustomItemListViewSetting(
                image: "assets/svg/Instagram.svg",
                textItem: "Follow us on Instagram",
              ),
              const CustomItemListViewSetting(
                image: "assets/svg/X Logo.svg",
                textItem: "Follow us on X",
              ),
              const CustomItemListViewSetting(
                image: "assets/svg/Youtube.svg",
                textItem: "Subscribe to our YouTube",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
