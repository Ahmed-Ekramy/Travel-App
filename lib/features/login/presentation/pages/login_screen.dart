import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/core/theming/text_style.dart';

import '../../../../core/shard_widget/button.dart';
import '../../../../core/shard_widget/text_form_field.dart';
import '../widgets/icon_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/plane_login.jpg",
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('البريد الالكتروني',
                        textAlign: TextAlign.right,
                        style: readexPro16w700()
                            .copyWith(fontWeight: FontWeight.w500)),
                    SizedBox(height: 22.h),
                    const AppTextFormField(hintText: 'البريد الاكترونى'),
                    SizedBox(height: 22.h),
                    Text('كلمة المرور',
                        textAlign: TextAlign.right,
                        style: readexPro16w700()
                            .copyWith(fontWeight: FontWeight.w500)),
                    SizedBox(height: 22.h),
                    AppTextFormField(
                      hintText: 'كلمه المرور',
                      isObscureText: isObscure,
                      preIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.forgotPassword);
                        },
                        child: Text(' نسيت كلمة المرور',
                            textAlign: TextAlign.right,
                            style: readexPro16w700().copyWith(
                              fontSize: 14.sp,
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                            ))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('تذكرني',
                            textAlign: TextAlign.right,
                            style: readexPro16w700().copyWith(
                              fontSize: 14.sp,
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(Icons.check_box_outline_blank)
                      ],
                    )
                  ]),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 110.h,
            )),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CustomButton(
                    colorButton: Color(0xFF1C98DE),
                    heightButton: 55,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                   CustomButton(
                    onPressed: () {

                    },
                    colorButton: Colors.white,
                    heightButton: 55,
                    colorText: Colors.blue,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 127,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFD9D8D8),
                            ),
                          ),
                        ),
                      ),
                      Text('او من خلال',
                          textAlign: TextAlign.center,
                          style: readexPro14w400()),
                      Container(
                        width: 127,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFD9D8D8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconLogin(imageIcon: "assets/svg/google.svg"),
                      IconLogin(imageIcon: "assets/svg/apple.svg"),
                      IconLogin(imageIcon: "assets/svg/Facebook.svg"),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
