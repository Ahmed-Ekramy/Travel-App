import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/routing/route.dart';
import '../../../../core/theming/text_style.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 270.0.h),
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.r),
                topLeft: Radius.circular(40.r))),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 8.0.w, right: 8.w, top: 150),
          child:  SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.profEditScreen);
                  },
                  child: const ContainerProf(
                    image: 'assets/svg/user2.svg',
                    textItem: 'Account',
                    text: 'you can edit your personal account',
                  ),
                ),
                const ContainerProf(image: 'assets/svg/bell.svg', textItem: 'Notification', text: "Control in receiving notifications"),
                const ContainerProf(image: 'assets/svg/creditcard.svg', textItem: 'payment', text: "Edit and add payment method"),
                const ContainerProf(image: 'assets/svg/bookmark.svg', textItem: 'Favorites', text: "Add and remove favorite places"),
                const ContainerProf(image: 'assets/svg/shield-cross.svg', textItem: 'privacy policy', text: "Privacy Policy of the application"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerProf extends StatelessWidget {
  final String image;
  final String textItem;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          SvgPicture.asset(image),
          SizedBox(
            width: 15.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textItem,
                style: readexPro16w700(),
              ),
              Text(text, style: readexPro14w400())
            ],
          ),
        ],
      ),
    );
  }

  const ContainerProf(
      {super.key,
      required this.image,
      required this.textItem,
      required this.text});
}
