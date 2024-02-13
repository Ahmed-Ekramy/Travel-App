import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/core/theming/text_style.dart';

import '../../../../core/shard_widget/button.dart';
import '../../../../core/shard_widget/text_form_field.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 60.h,
              ),
              Text(
                'نسيت كلمة المرور؟',
                style: readexPro16w700(),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                " ادخل بريدك الالكتروني  ",
                style: readexPro14w400(),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                " البريد الالكتروني  ",
                style: readexPro16w700(),
              ),
              SizedBox(
                height: 20.h,
              ),
              const AppTextFormField(hintText: 'البريد الاكترونى'),
              const Expanded(child: SizedBox()),
               CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.newPassword);
                },
                nameButton: "ارسال",
                colorButton: const Color(0xFF1C98DE),
                heightButton: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
