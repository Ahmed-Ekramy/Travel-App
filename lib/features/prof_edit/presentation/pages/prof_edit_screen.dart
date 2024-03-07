import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/shard_widget/button.dart';
import '../../../../core/shard_widget/text_form_field.dart';
import '../../../../core/theming/text_style.dart';

class ProfEditScreen extends StatefulWidget {
  const ProfEditScreen({Key? key}) : super(key: key);

  @override
  State<ProfEditScreen> createState() => _ProfEditScreenState();
}

class _ProfEditScreenState extends State<ProfEditScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Padding(
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
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("First Name", style: readexPro16w700()),
                                SizedBox(
                                  height: 8.h,
                                ),
                                SizedBox(
                                    width: 160.w,
                                    child: const AppTextFormField(
                                      hintText: "Enter First Name",
                                    ))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Second Name", style: readexPro16w700()),
                                SizedBox(
                                  height: 8.h,
                                ),
                                const SizedBox(
                                    width: 160,
                                    child: AppTextFormField(
                                      hintText: "Enter Second Name",
                                    ))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text("Email", style: readexPro16w700()),
                        SizedBox(
                          height: 8.h,
                        ),
                        const AppTextFormField(
                          hintText: "Enter your Email",
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Genre", style: readexPro16w700()),
                            Row(
                              children: [
                                Text("Male", style: readexPro16w700()),
                                SizedBox(width: 10.w,),
                                const Icon(Icons.circle_outlined,color: Colors.blue,)
                              ],
                            ),
                            Row(
                              children: [
                                Text("Female", style: readexPro16w700()),
                                SizedBox(width: 10.w,),
                                Icon(Icons.check_circle,color: Colors.blue,)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Text("Country", style: readexPro16w700()),
                        SizedBox(
                          height: 8.h,
                        ),
                        const AppTextFormField(
                          hintText: "Enter your Country",
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Text("Password", style: readexPro16w700()),
                        SizedBox(
                          height: 8.h,
                        ),
                         AppTextFormField(
                          hintText: "Enter your password",
                          isObscureText: isObscure,
                          suffixIcon: InkWell(
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
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomButton(nameButton: "Save",heightButton: 70,),
                        SizedBox(
                          height: 40.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 110,
              left: 120,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Ahmed Ekramy", style: readexPro16w700()),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("ekramy3698@gmail.com", style: readexPro14w400()),
                ],
              )),
        ],
      ),
    );
  }
}
