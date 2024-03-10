import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:travel_app/travel_app.dart';
import 'core/di/di.dart';
import 'core/helper/bloc_observer.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  servicesLocator();
  runApp(
      EasyLocalization(
          startLocale: const Locale("en"),
          saveLocale: true,
          supportedLocales: const [Locale('en'), Locale('ar')],
          path: 'assets/localizations',
          fallbackLocale: const Locale('en'),
      child: const TravelApp()));
}
final getIt = GetIt.instance;
// DateTime convertDateFormat(String originalDate) {
//   // Parse the original date string in the format "dd/MM/yyyy" into a DateTime object
//   DateTime parsedDate = DateFormat('dd/MM/yyyy').parse(originalDate);
//   // Return the DateTime object
//   return parsedDate;
// }
String formatDateTimeRange(DateTimeRange dateRange) {
  // Format start and end dates in the desired format (dd/MM/yyyy)
  String formattedStartDate = DateFormat('dd/MM/yyyy').format(dateRange.start);
  String formattedEndDate = DateFormat('dd/MM/yyyy').format(dateRange.end);
  // Combine the formatted dates into a range
  String formattedDateRange = '$formattedStartDate - $formattedEndDate';

  return formattedDateRange;
}