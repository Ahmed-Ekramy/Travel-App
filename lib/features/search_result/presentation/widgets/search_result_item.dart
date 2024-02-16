import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/core/theming/text_style.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
        shadowColor:Colors.grey,
        child: Column(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Saudi Arabian Airlines",
                style: readexPro16w700().copyWith(color: Colors.grey)),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage("assets/images/Logo_of_Saudia 1.png"),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("6:00 ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 40.w,
                        ),
                        const Text("05 hours 45 minutes",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 40.w,
                        ),
                        const Text("6:00 ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Container(
                        height: 2,
                        width: 300,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        )),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      children: [
                        const Text("Cairo ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 150.w),
                        const Text("Saudi Arabian ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Egyptian Airlines",
                style: readexPro16w700().copyWith(color: Colors.grey)),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage("assets/images/EgyptAir-Logo 1.png"),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("6:00 ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 40.w,
                        ),
                        const Text("05 hours 45 minutes",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 40.w,
                        ),
                        const Text("6:00 ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Container(
                        height: 2,
                        width: 280,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        )),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      children: [
                        const Text("Cairo ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 150.w),
                        const Text("Saudi Arabian ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(height: 20.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("EGP",style: TextStyle(color: Colors.blueAccent)),
                Text(
                  " 11,9400",
                  style: readexPro24w700().copyWith(color: Colors.blue),
                )
              ],
            ),
          ],
        )
      ],
    ));
  }
}
