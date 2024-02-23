import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key, this.preIcon,
      this.contentPadding,
      this.hintText,
      this.focusedBorder,
      this.enabledBorder, this.isObscureText, this.suffixIcon,this.onChanged});
  final bool? isObscureText;
  final Widget? preIcon;
  final Widget? suffixIcon;
  final EdgeInsets? contentPadding;
  final String? hintText;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
 final Function(String)?onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        onChanged:onChanged,
        obscureText: isObscureText ?? false,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText:hintText,
          prefixIcon:preIcon,
          suffixIcon:suffixIcon,
          isDense: true,
          contentPadding:
              EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 25.h),
          enabledBorder:enabledBorder?? OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Color(0xFFB8B8B8), width: 1)),
          focusedBorder:focusedBorder?? OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.blueAccent, width: 1)),
        ),
      ),
    );
  }
}
