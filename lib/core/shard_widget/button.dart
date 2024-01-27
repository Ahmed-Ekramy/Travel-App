import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/theming/text_style.dart';

class CustomButton extends StatelessWidget {
  final double? borderRadius;
  final double? horizontal;
  final double? vertical;
  final double? widthButton;
  final double? heightButton;
  final Color? colorButton;
  final Color? colorText;
  final String? nameButton;
  final VoidCallback? onPressed;

  const CustomButton(
      {this.borderRadius,
      this.horizontal,
      this.vertical,
      this.widthButton,
      this.heightButton,
      this.nameButton,
      this.onPressed,
      super.key,
      this.colorButton, this.colorText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 16),
              side: BorderSide(color: Color(0xAD1C98DE))
              )),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
              horizontal: horizontal ?? 12.w, vertical: vertical ?? 14.h)),
          backgroundColor:
              MaterialStatePropertyAll(colorButton ??  const Color(0xAD1C98DE),),
          fixedSize: MaterialStateProperty.all(
              Size(widthButton ?? double.maxFinite, heightButton ?? 50.h))),
      onPressed: onPressed,
      child:

      Text(nameButton ?? 'Login',
          textAlign: TextAlign.center,
          style: readexPro16w700().copyWith(color:colorText?? Colors.white,fontSize: 14.sp)),
    );
  }
}
