import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/shard_widget/button.dart';
import 'package:travel_app/core/theming/text_style.dart';

class OfferDetailScreen extends StatelessWidget {
  const OfferDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child:  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
            SizedBox(
                width:double.infinity,
                child: Image.asset("assets/images/Frame 143.png")),
                SizedBox(height: 37.h,),
                Text(
                  "Enjoy a 25% offer on your first European flights",
                  textAlign: TextAlign.center,
                  style: readexPro16w700()
                ),
                SizedBox(height: 10.h,),
                Text(
                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد',
                  textAlign: TextAlign.right,
                  style: readexPro16w700().copyWith(fontSize: 12.sp,color: Colors.black.withOpacity(0.5),
                  )
                ),
                SizedBox(height: 37.h,),
                Row(
                  children: [
                     CustomButton(widthButton: 154.w,heightButton: 100.h,nameButton: '${"Price".tr()} \n10.0000',colorButton: Colors.white,colorText: const Color(0xFF1C98DE),),
                    SizedBox(width: 10.h,),

                     CustomButton(widthButton: 193.w,heightButton: 100.h,nameButton: 'Book now'.tr()),
                  ],
                ),

              ]),
        ),
      ),
    );
  }
}
