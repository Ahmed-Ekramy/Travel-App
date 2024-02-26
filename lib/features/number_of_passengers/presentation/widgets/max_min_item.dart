// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:travel_app/features/flight/presentation/manager/flight_cubit.dart';
//
// import '../../../../core/theming/text_style.dart';
//
// Row maxMinItem(context) {
//   return Row(
//     children: [
//       InkWell(
//         onTap: () {
//           FlightCubit.get(context).min();
//         },
//         child: const Icon(
//           FontAwesomeIcons.circleMinus,
//           size: 30,
//           color: Color(0xff001A72),
//         ),
//       ),
//       SizedBox(
//         width: 10.w,
//       ),
//       Text(
//   "${ FlightCubit.get(context).numPass}",
//         style: readexPro12w400().copyWith(
//             color: Colors.black, fontWeight: FontWeight.w500),
//       ),
//       SizedBox(
//         width: 10.w,
//       ),
//       InkWell(
//         onTap: () {
//           FlightCubit.get(context).max();
//         },
//         child: const Icon(
//           Icons.add_circle_outline,
//           size: 30,
//           color: Color(0xff001A72),
//         ),
//       ),
//     ],
//   );
// }
