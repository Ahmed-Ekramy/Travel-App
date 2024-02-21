import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/travel_app.dart';
import 'core/helper/bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(
      EasyLocalization(
          startLocale: const Locale("en"),
          saveLocale: true,
          supportedLocales: const [Locale('en'), Locale('ar')],
          path: 'assets/localizations',
          fallbackLocale: const Locale('en'),
      child: const TravelApp()));
}



