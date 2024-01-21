import 'package:flutter/material.dart';
import 'package:travel_app/core/routing/app_route.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => AppRoute.generateRoute(settings),
      initialRoute: "/",
    );
  }
}
