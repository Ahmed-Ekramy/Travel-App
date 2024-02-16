import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/travel_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
          startLocale: const Locale("en"),
          saveLocale: true,
          supportedLocales: const [Locale('en'), Locale('ar')],
          path: 'assets/localizations',
          fallbackLocale: const Locale('en'),
      child: const TravelApp()));
}



