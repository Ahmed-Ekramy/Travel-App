import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/route.dart';
import 'container_prof.dart';

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
          padding: EdgeInsets.only(left: 8.0.w, right: 8.w, top: 150.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.profEditScreen);
                  },
                  child: ContainerProf(
                    image: 'assets/svg/user2.svg',
                    textItem: 'Account'.tr(),
                    text: 'you can edit your personal account',
                  ),
                ),
                ContainerProf(
                    image: 'assets/svg/bell.svg',
                    textItem: 'Notification'.tr(),
                    text: "Control in receiving notifications".tr()),
                ContainerProf(
                    image: 'assets/svg/creditcard.svg',
                    textItem: 'payment'.tr(),
                    text: "Edit and add payment method".tr()),
                ContainerProf(
                    image: 'assets/svg/bookmark.svg',
                    textItem: 'Favorites'.tr(),
                    text: "Add and remove favorite places".tr()),
                ContainerProf(
                    image: 'assets/svg/shield-cross.svg',
                    textItem: 'privacy policy'.tr(),
                    text: "Privacy Policy of the application".tr()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

