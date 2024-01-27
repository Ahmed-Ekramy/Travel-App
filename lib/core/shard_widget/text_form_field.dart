import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 359,
      height: 44,

      child: TextFormField(
        textAlign: TextAlign.end,
        decoration: InputDecoration(

          hintText: '....يمكنك البحث عن العرض هنا',
          suffixIcon: const Icon(Icons.search_rounded, size: 25, color: Colors.grey),
          isDense: true,
          contentPadding: EdgeInsetsDirectional.symmetric(vertical: 10.h,horizontal: 10.w),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(color: Color(0xFFB8B8B8), width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(color: Colors.blueAccent, width: 1)),
        ),
      ),
    );
  }
}
