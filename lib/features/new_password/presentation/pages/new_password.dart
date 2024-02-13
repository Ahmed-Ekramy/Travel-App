import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shard_widget/button.dart';
import '../../../../core/shard_widget/text_form_field.dart';
import '../../../../core/theming/text_style.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 20.h),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  'انشاء كلمة مرور جديده',
                  style: readexPro16w700(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  " ادخل كلمه المرور  ",
                  style: readexPro14w400(),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  " كلمه المرور  ",
                  style: readexPro16w700(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                 AppTextFormField(hintText: 'كلمه المرور',
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
                  ),),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "تأكيد كلمه المرور  ",
                  style: readexPro16w700(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                 AppTextFormField(hintText: 'تأكيد كلمه المرور', isObscureText: isObscure,
                  preIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    child: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),),

                const Expanded(child: SizedBox()),
                const CustomButton(
                  nameButton: "حفظ",
                  colorButton: Color(0xFF1C98DE),
                  heightButton: 55,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
