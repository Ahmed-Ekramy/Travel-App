import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/theming/text_style.dart';
import '../widgets/custom_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          const CustomProfile(),
          Positioned(
              top: 110,
              left: 120,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                  ),
                  SizedBox(height: 10.h,),
                  Text("Ahmed Ekramy",style: readexPro16w700()),
                  SizedBox(height: 10.h,),

                  Text("ekramy3698@gmail.com",style: readexPro14w400()),
                ],
              )),
        ],
      ),
    );
  }
}

